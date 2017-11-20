script "card Behavior"
command launchFile pFile
   local tPath
   put specialFolderPath("engine") & slash & pFile into tPath
   if there is a file tPath then
      launch URL ("file:" & tPath)
   else 
      answer "File not found:" && tPath
   end if
end launchFile

