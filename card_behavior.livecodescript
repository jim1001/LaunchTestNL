script "card Behavior"
command launchFile pFile
   put "Command launchFile" into field "diag"
   answer "Command launchFile"
   local tPath
   put specialFolderPath("engine") & "/assets/" & pFile into tPath
   if there is a file tPath then
      launch URL ("file:" & tPath)
   else 
      answer "File not found:" && tPath
   end if
end launchFile

command myHello
   put "Command myHello" into field "diag"
   answer "Hello"
end myHello
