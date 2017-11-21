script "card Behavior"
command launchFile pFile
   local tSrc, tDest
   put "Command launchFile" into field "diag"
   answer "Command launchFile"
   put specialFolderPath("engine") & "/assets/" & pFile into tSrc
   if there is no file tSrc then
      answer "File not found:" && tSrc
      exit launchFile
   end if
   put "/sdcard/" & pFile into tDest
   put URL ("binfile:" & tSrc) into URL ("binfile:" & tDest)
   launch URL ("file:" & tDest)
end launchFile

command myHello
   put "Command myHello" into field "diag"
   answer "Hello"
end myHello
