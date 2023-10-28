strFilename=WScript.Arguments.Item(0)

Set fso=CreateObject("Scripting.FileSystemObject")

set objFile=fso.OpenTextFile(strFilename,1)

newContent = ""

Do Until objFile.AtEndOfStream
  curLine = objFile.ReadLine
  If InStr(1, curLine, "PATCHME_VBS=") = 1 Then
    spliti = CInt(Split(curLine, "=")(1))
    curLine = spliti & "=""Windows 95 CD-ROM"",WIN95_" & (spliti - 2) & ".cab,0"
    WScript.Echo curLine
  End If
  newContent = newContent & curLine & vbCrLf
Loop



set objFile=fso.OpenTextFile(strFilename,2)
objFile.Write newContent
objFile.Close
