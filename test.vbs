dim tst1, tst2
tst1="h.exe cmd.exe /c @echo Hello, this is test file from h, for info see readme.md and test.vbs! > tst.txt"
tst2="h.exe cmd.exe /c start explorer.exe"
CreateObject("Wscript.Shell").Run tst1, 1, False
CreateObject("Wscript.Shell").Run tst2, 1, False