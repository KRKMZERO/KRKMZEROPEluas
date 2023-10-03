local Soundpattern1 = {
   "drum-hitclap",
   "drum-hitnormal",
}
function onCreate()
--debugPrint(getPropertyFromClass('ClientPrefs', 'hitsoundVolume'))
end
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
   if getPropertyFromClass('ClientPrefs', 'hitsoundVolume') >= 0.1 then
      if not isSustainNote and noteData == 0 then
         playSound(Soundpattern1[getRandomInt(1, #Soundpattern1)],tonumber(1.5))
      end
      if not isSustainNote and noteData == 1 then
         playSound(Soundpattern1[getRandomInt(1, #Soundpattern1)],tonumber(1.5))
      end
      if not isSustainNote and noteData == 2 then
         playSound(Soundpattern1[getRandomInt(1, #Soundpattern1)],tonumber(1.5))
      end
      if not isSustainNote and noteData == 3 then
         playSound(Soundpattern1[getRandomInt(1, #Soundpattern1)],tonumber(1.5))
      end
   end
end
