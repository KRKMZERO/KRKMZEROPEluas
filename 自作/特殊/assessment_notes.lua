C1 = 0
C2 = 0
C3 = 0
C4 = 0
--[[
function onUpdate(elapsed)
   local 1 = (getSongPosition() / 1000)*(bpm/60)
   close
   crochet
end
]]
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
   if noteData == 0 then
      if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
         C1 = C1 + 1
         makeLuaText('1assessment'..C1,'sick!',500,defaultPlayerStrumX0,defaultPlayerStrumY0 - 10);
         setTextAlignment("1assessment"..C1, "left")
         setTextSize('1assessment'..C1, 40);
         setTextColor('1assessment'..C1, getColorFromHex('FAFF00'));
         setProperty('1assessment'..C1..'.color', getColorFromHex('FAFF00'))
         setObjectCamera('1assessment'..C1, 'hud');
         doTweenY("1assessmentT"..C1,"1assessment"..C1,defaultPlayerStrumY0 - 100,3,'Backout')
         doTweenAlpha("1assessmentT2"..C1,"1assessment"..C1,0,3,'Backout')
         addLuaText('1assessment'..C1)
      end
        if getPropertyFromGroup("notes", membersIndex, "rating") == "good" then
         C1 = C1 + 1
         makeLuaText('1assessment'..C1,'good!',500,defaultPlayerStrumX0,defaultPlayerStrumY0 - 10);
         setTextAlignment("1assessment"..C1, "left")
         setTextSize('1assessment'..C1, 40);
         setTextColor('1assessment'..C1, 'FFFFFF');
         setObjectCamera('1assessment'..C1, 'hud');
         doTweenY("1assessmentT"..C1,"1assessment"..C1,defaultPlayerStrumY0 - 100,3,'Backout')
         doTweenAlpha("1assessmentT2"..C1,"1assessment"..C1,0,3,'Backout')
         addLuaText('1assessment'..C1)
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "shit" then
         C1 = C1 + 1
         makeLuaText('1assessment'..C1,'shit',500,defaultPlayerStrumX0,defaultPlayerStrumY0 - 10);
         setTextAlignment("1assessment"..C1, "left")
         setTextSize('1assessment'..C1, 40);
         setTextColor('1assessment'..C1, 'B8B8B8');
         setObjectCamera('1assessment'..C1, 'hud');
         doTweenY("1assessmentT"..C1,"1assessment"..C1,defaultPlayerStrumY0 - 100,3,'Backout')
         doTweenAlpha("1assessmentT2"..C1,"1assessment"..C1,0,3,'Backout')
         addLuaText('1assessment'..C1)
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "bad" then
         C1 = C1 + 1
         makeLuaText('1assessment'..C1,'bad',500,defaultPlayerStrumX0,defaultPlayerStrumY0 - 10);
         setTextAlignment("1assessment"..C1, "left")
         setTextSize('1assessment'..C1, 40);
         setTextColor('1assessment'..C1, '6B6B6B');
         setObjectCamera('1assessment'..C1, 'hud');
         doTweenY("1assessmentT"..C1,"1assessment"..C1,defaultPlayerStrumY0 - 100,3,'Backout')
         doTweenAlpha("1assessmentT2"..C1,"1assessment"..C1,0,3,'Backout')
         addLuaText('1assessment'..C1)
      end
   end

   if noteData == 1 then
      if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
         C2 = C2 + 1
         makeLuaText('2assessment'..C2,'sick!',500,defaultPlayerStrumX1,defaultPlayerStrumY1 - 10);
         setTextAlignment("2assessment"..C2, "left")
         setTextSize('2assessment'..C2, 40);
         setTextColor('2assessment'..C2, 'FAFF00');
         setObjectCamera('2assessment'..C2, 'hud');
         doTweenY("2assessmentT"..C2,"2assessment"..C2,defaultPlayerStrumY1 - 100,3,'Backout')
         doTweenAlpha("2assessmentT2"..C2,"2assessment"..C2,0,3,'Backout')
         addLuaText('2assessment'..C2)
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "good" then
         C2 = C2 + 1
         makeLuaText('2assessment'..C2,'good!',500,defaultPlayerStrumX1,defaultPlayerStrumY1 - 10);
         setTextAlignment("2assessment"..C2, "left")
         setTextSize('2assessment'..C2, 40);
         setTextColor('2assessment'..C2, 'FFFFFF');
         setObjectCamera('2assessment'..C2, 'hud');
         doTweenY("2assessmentT"..C2,"2assessment"..C2,defaultPlayerStrumY1 - 100,3,'Backout')
         doTweenAlpha("2assessmentT2"..C2,"2assessment"..C2,0,3,'Backout')
         addLuaText('2assessment'..C2)
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "shit" then
         C2 = C2 + 1
         makeLuaText('2assessment'..C2,'shit',500,defaultPlayerStrumX1,defaultPlayerStrumY1 - 10);
         setTextAlignment("2assessment"..C2, "left")
         setTextSize('2assessment'..C2, 40);
         setTextColor('2assessment'..C2, 'B8B8B8');
         setObjectCamera('2assessment'..C2, 'hud');
         doTweenY("2assessmentT"..C2,"2assessment"..C2,defaultPlayerStrumY1 - 100,3,'Backout')
         doTweenAlpha("2assessmentT2"..C2,"2assessment"..C2,0,3,'Backout')
         addLuaText('2assessment'..C2)
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "bad" then
         C2 = C2 + 1
         makeLuaText('2assessment'..C2,'bad',500,defaultPlayerStrumX1,defaultPlayerStrumY1 - 10);
         setTextAlignment("2assessment"..C2, "left")
         setTextSize('2assessment'..C2, 40);
         setTextColor('2assessment'..C2, '6B6B6B');
         setObjectCamera('2assessment'..C2, 'hud');
         doTweenY("2assessmentT"..C2,"2assessment"..C2,defaultPlayerStrumY1 - 100,3,'Backout')
         doTweenAlpha("2assessmentT2"..C2,"2assessment"..C2,0,3,'Backout')
         addLuaText('2assessment'..C2)
      end
   end

   if noteData == 2 then
      if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
         C3 = C3 + 1
         makeLuaText('3assessment'..C3,'sick!',500,defaultPlayerStrumX2,defaultPlayerStrumY2 - 10);
         setTextAlignment("3assessment"..C3, "left")
         setTextSize('3assessment'..C3, 40);
         setTextColor('3assessment'..C3, 'FAFF00');
         setObjectCamera('3assessment'..C3, 'hud');
         doTweenY("3assessmentT"..C3,"3assessment"..C3,defaultPlayerStrumY2 - 100,3,'Backout')
         doTweenAlpha("3assessmentT2"..C3,"3assessment"..C3,0,3,'Backout')
         addLuaText('3assessment'..C3)
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "good" then
         C3 = C3 + 1
         makeLuaText('3assessment'..C3,'good!',500,defaultPlayerStrumX2,defaultPlayerStrumY2 - 10);
         setTextAlignment("3assessment"..C3, "left")
         setTextSize('3assessment'..C3, 40);
         setTextColor('3assessment'..C3, 'FFFFFF');
         setObjectCamera('3assessment'..C3, 'hud');
         doTweenY("3assessmentT"..C3,"3assessment"..C3,defaultPlayerStrumY2 - 100,3,'Backout')
         doTweenAlpha("3assessmentT2"..C3,"3assessment"..C3,0,3,'Backout')
         addLuaText('3assessment'..C3)
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "shit" then
         C3 = C3 + 1
         makeLuaText('3assessment'..C3,'shit',500,defaultPlayerStrumX2,defaultPlayerStrumY2 - 10);
         setTextAlignment("3assessment"..C3, "left")
         setTextSize('3assessment'..C3, 40);
         setTextColor('3assessment'..C3, 'B8B8B8');
         setObjectCamera('3assessment'..C3, 'hud');
         doTweenY("3assessmentT"..C3,"3assessment"..C3,defaultPlayerStrumY2 - 100,3,'Backout')
         doTweenAlpha("3assessmentT2"..C3,"3assessment"..C3,0,3,'Backout')
         addLuaText('3assessment'..C3)
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "bad" then
         C3 = C3 + 1
         makeLuaText('3assessment'..C3,'bad',500,defaultPlayerStrumX2,defaultPlayerStrumY2 - 10);
         setTextAlignment("3assessment"..C3, "left")
         setTextSize('3assessment'..C3, 40);
         setTextColor('3assessment'..C3, '6B6B6B');
         setObjectCamera('3assessment'..C3, 'hud');
         doTweenY("3assessmentT"..C3,"3assessment"..C3,defaultPlayerStrumY2 - 100,3,'Backout')
         doTweenAlpha("3assessmentT2"..C3,"3assessment"..C3,0,3,'Backout')
         addLuaText('3assessment'..C3)
      end
   end

   if noteData == 3 then
      if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
         C4 = C4 + 1
         makeLuaText('4assessment'..C4,'sick!',500,defaultPlayerStrumX3,defaultPlayerStrumY3 - 10);
         setTextAlignment("4assessment"..C4, "left")
         setTextSize('4assessment'..C4, 40);
         setTextColor('4assessment'..C4, 'FAFF00');
         setObjectCamera('4assessment'..C4, 'hud');
         doTweenY("4assessmentT"..C4,"4assessment"..C4,defaultPlayerStrumY3 - 100,3,'Backout')
         doTweenAlpha("4assessmentT2"..C4,"4assessment"..C4,0,3,'Backout')
         addLuaText('4assessment'..C4)
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "good" then
         C4 = C4 + 1
         makeLuaText('4assessment'..C4,'good!',500,defaultPlayerStrumX3,defaultPlayerStrumY3 - 10);
         setTextAlignment("4assessment"..C4, "left")
         setTextSize('4assessment'..C4, 40);
         setTextColor('4assessment'..C4, 'FFFFFF');
         setObjectCamera('4assessment'..C4, 'hud');
         doTweenY("4assessmentT"..C4,"4assessment"..C4,defaultPlayerStrumY3 - 100,3,'Backout')
         doTweenAlpha("4assessmentT2"..C4,"4assessment"..C4,0,3,'Backout')
         addLuaText('4assessment'..C4)
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "shit" then
         C4 = C4 + 1
         makeLuaText('4assessment'..C4,'shit',500,defaultPlayerStrumX3,defaultPlayerStrumY3 - 10);
         setTextAlignment("4assessment"..C4, "left")
         setTextSize('4assessment'..C4, 40);
         setTextColor('4assessment'..C4, 'B8B8B8');
         setObjectCamera('4assessment'..C4, 'hud');
         doTweenY("4assessmentT"..C4,"4assessment"..C4,defaultPlayerStrumY3 - 100,3,'Backout')
         doTweenAlpha("4assessmentT2"..C4,"4assessment"..C4,0,3,'Backout')
         addLuaText('4assessment'..C4)
      end
      if getPropertyFromGroup("notes", membersIndex, "rating") == "bad" then
         C4 = C4 + 1
         makeLuaText('4assessment'..C4,'bad',500,defaultPlayerStrumX3,defaultPlayerStrumY3 - 10);
         setTextAlignment("4assessment"..C4, "left")
         setTextSize('4assessment'..C4, 40);
         setTextColor('4assessment'..C4, '6B6B6B');
         setObjectCamera('4assessment'..C4, 'hud');
         doTweenY("4assessmentT"..C4,"4assessment"..C4,defaultPlayerStrumY3 - 100,3,'Backout')
         doTweenAlpha("4assessmentT2"..C4,"4assessment"..C4,0,3,'Backout')
         addLuaText('4assessment'..C4)
      end
   end

end
function noteMiss(membersIndex, noteData, noteType, isSustainNote)
   if noteData == 0 then
      C1 = C1 + 1
      makeLuaText('1assessment'..C1,'miss!',500,defaultPlayerStrumX0,defaultPlayerStrumY0 - 10);
      setTextAlignment("1assessment"..C1, "left")
      setTextSize('1assessment'..C1, 40);
      setTextColor('1assessment'..C1, 'FF0000');
      setObjectCamera('1assessment'..C1, 'hud');
      doTweenY("1assessmentT"..C1,"1assessment"..C1,defaultPlayerStrumY0 - 100,3,'Backout')
      doTweenAlpha("1assessmentT2"..C1,"1assessment"..C1,0,3,'Backout')
      addLuaText('1assessment'..C1)
   end
   if noteData == 1 then
      C2 = C2 + 1
      makeLuaText('2assessment'..C2,'miss!',500,defaultPlayerStrumX1,defaultPlayerStrumY1 - 10);
      setTextAlignment("2assessment"..C2, "left")
      setTextSize('2assessment'..C2, 40);
      setTextColor('2assessment'..C2, 'FF0000');
      setObjectCamera('2assessment'..C2, 'hud');
      doTweenY("2assessmentT"..C2,"2assessment"..C2,defaultPlayerStrumY1 - 100,3,'Backout')
      doTweenAlpha("2assessmentT2"..C2,"2assessment"..C2,0,3,'Backout')
      addLuaText('2assessment'..C2)
   end
   if noteData == 2 then
      C3 = C3 + 1
      makeLuaText('3assessment'..C3,'miss!',500,defaultPlayerStrumX2,defaultPlayerStrumY2 - 10);
      setTextAlignment("3assessment"..C3, "left")
      setTextSize('3assessment'..C3, 40);
      setTextColor('3assessment'..C3, 'FF0000');
      setObjectCamera('3assessment'..C3, 'hud');
      doTweenY("3assessmentT"..C3,"3assessment"..C3,defaultPlayerStrumY2 - 100,3,'Backout')
      doTweenAlpha("3assessmentT2"..C3,"3assessment"..C3,0,3,'Backout')
      addLuaText('3assessment'..C3)
   end
   if noteData == 3 then
      C4 = C4 + 1
      makeLuaText('4assessment'..C4,'miss!',500,defaultPlayerStrumX3,defaultPlayerStrumY3 - 10);
      setTextAlignment("4assessment"..C4, "left")
      setTextSize('4assessment'..C4, 40);
      setTextColor('4assessment'..C4, 'FAFF00');
      setObjectCamera('4assessment'..C4, 'hud');
      doTweenY("4assessmentT"..C4,"4assessment"..C4,defaultPlayerStrumY3 - 100,3,'Backout')
      doTweenAlpha("4assessmentT2"..C4,"4assessment"..C4,0,3,'Backout')
      addLuaText('4assessment'..C4)
   end
end
function onTweenCompleted(tag)
   if tag == '1assessmentT'..C1 then
      removeLuaText('assessment'..C1,true)
      --debugPrint('1OK')
   end
   if tag == '2assessmentT'..C2 then
      removeLuaText('assessment'..C2,true)
      --debugPrint('2OK')
   end
   if tag == '3assessmentT'..C2 then
      removeLuaText('assessment'..C2,true)
      --debugPrint('3OK')
   end
   if tag == '4assessmentT'..C2 then
      removeLuaText('assessment'..C2,true)
      --debugPrint('4OK')
   end
end