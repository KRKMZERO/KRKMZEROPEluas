local noteXCenter = {412,524,636,748} -- Notes center : 0 , 1 , 2 , 3

function onCreatePost()
   for note = 0,7 do 
      noteTweenX("noteX"..note, note, noteXCenter[(note % 4) +1], 0.01, "quadInOut")
   end
   if downscroll == true then 
      for i=0, 3 do
         setPropertyFromGroup('opponentStrums',i,'downScroll',false)
         setPropertyFromGroup('opponentStrums',i,'y',50)
      end
   end
   if downscroll == false then 
      for i=0, 3 do
         setPropertyFromGroup('opponentStrums',i,'downScroll',true)
         setPropertyFromGroup('opponentStrums',i,'y',570)
      end
   end
end
