#include <stdio.h>
#include <windows.h>
#include <io.h>
#include <fcntl.h>

int wmain(int argc, wchar_t **argv)
{
	_setmode(_fileno(stdout), _O_U16TEXT);
	wchar_t exect[512];
	wcscpy(exect, L"");
	wchar_t clargs[2048];
	wcscpy(clargs, L"");
	wchar_t cdir[512];
	wcscpy(cdir, L"");
	_wgetcwd(cdir);
    for (int i = 0; i < argc; ++i)
    {
		if (i == 1)
			wcscat(exect, argv[i]);
		if (i > 1) {
			wcscat(clargs, argv[i]);
			if (i != argc)
				wcscat(clargs, L" ");
		}
        // wprintf(L"argv[%d]: %s\n", i, argv[i]);
    }
	// wprintf(L"Working Directory: %s\n", cdir);
	// wprintf(L"Executable Name/Path: %s\n", exect);
	// wprintf(L"Command Line Arguments: %s\n", clargs);
	ShellExecuteW(0, L"open", exect, clargs, cdir, SW_HIDE);
	return 0;
}