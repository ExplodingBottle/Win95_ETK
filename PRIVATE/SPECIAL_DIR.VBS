fileToDir = WScript.Arguments.Item(0)
prefixToAdd = WScript.Arguments.Item(1)

Set fso = CreateObject("Scripting.FileSystemObject")
 
Set folder = fso.GetFolder(fileToDir)
Set files = folder.Files

For each item In files
   WScript.Echo prefixToAdd + item.Name
Next
