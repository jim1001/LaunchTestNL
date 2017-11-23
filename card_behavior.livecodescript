script "card Behavior"
on preOpenCard
   put empty into field "diag" of card "card1"
end preOpenCard

command launchFile pFile
   local tLaunchPath
   put "Command launchFile" into field "diag"
   answer "Command launchFile"
   -- specialFolderPath("External Documents") refs:
   -- http://quality.livecode.com/show_bug.cgi?id=11229
   -- http://forums.livecode.com/viewtopic.php?f=53&t=15136&p=160590#p160503
   put specialFolderPath("External Documents") & "/assets/" & pFile into tLaunchPath
   if there is no file tLaunchPath then
      answer "File not found:" && tLaunchPath
      exit launchFile
   else
      launch URL ("file:" & tLaunchPath)   
   end if
end launchFile
