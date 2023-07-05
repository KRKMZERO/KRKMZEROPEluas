rollsscore = 0
test = false
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
   if noteData == 0 then
      if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
         rollsscore = rollsscore + 350
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "good" then
         rollsscore = rollsscore + 200 
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "bad" then
         rollsscore = rollsscore + 100 
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "shit" then
         rollsscore = rollsscore + 50
      end
   end

   if noteData == 1 then
      if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
         rollsscore = rollsscore + 350
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "good" then
         rollsscore = rollsscore + 200 
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "bad" then
         rollsscore = rollsscore + 100 
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "shit" then
         rollsscore = rollsscore + 50
      end
   end

   if noteData == 2 then
      if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
         rollsscore = rollsscore + 350
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "good" then
         rollsscore = rollsscore + 200 
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "bad" then
         rollsscore = rollsscore + 100 
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "shit" then
         rollsscore = rollsscore + 50
      end
   end

   if noteData == 3 then
      if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
         rollsscore = rollsscore + 350
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "good" then
         rollsscore = rollsscore + 200 
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "bad" then
         rollsscore = rollsscore + 100 
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "shit" then
         rollsscore = rollsscore + 50
      end
   end

end
function noteMiss(membersIndex, noteData, noteType, isSustainNote)
   if rollsscore >= 10 then
      rollsscore = rollsscore - 10
   else
      SPscore = SPscore - 10
   end
end
function onSongStart()
   runTimer('addscore',0.0001,0)
end
function onCreate()
   if test then
	makeLuaText('SPScore','Score:',1280,0,150); -- x y values go on the second and third 0's
	setTextAlignment("SPScore", 'center');
	setTextSize('SPScore', 20);
	addLuaText('SPScore')
   screenCenter('SPScore','x');
   setObjectCamera('SPScore','other');
   end
end
function onUpdate(elapsed)
   if test then
   setTextString('SPScore', 'score\n'..rollsscore..'\n'..SPscore);
   end

   setScore(SPscore)

end
SPscore = 0
function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'addscore' then
      if rollsscore >= 1 and rollsscore <= 100 then
         rollsscore = rollsscore - 1
         --addScore(1) 
         SPscore = SPscore + 1
      end
      if rollsscore >= 100 and rollsscore <= 1000 then
         rollsscore = rollsscore - 10
         --addScore(10) 
         SPscore = SPscore + 10
      end
      if rollsscore >= 1000 then
         rollsscore = rollsscore - 100
         --addScore(100) 
         SPscore = SPscore + 100
      end
   end
end
function onEndSong()
   SPscore = SPscore + rollsscore
   rollsscore = 0
   setScore(SPscore)
end