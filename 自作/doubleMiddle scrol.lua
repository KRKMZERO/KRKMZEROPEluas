local noteXCenter = {412,524,636,748} -- Notes center : 0 , 1 , 2 , 3
local noteYPlace = {50,570} -- Up , Down
tes = 0
function onUpdatePost(elapsed)
    for note = 0,7 do 
        noteTweenX("noteX"..note, note, noteXCenter[(note % 4) +1], 0.01, "quadInOut")

        if note < 4 then 
           noteTweenAlpha("noteEnemyA"..note, note, 1, 0.01, "quadInOut")
           noteTweenY("noteEnemyY"..note, note, noteYPlace[(downscroll and 1 or 2)], 0.01, "quadInOut")
           noteTweenDirection("noteEnemyDir" ..note, note, -90, 0.01, "quadInOut")
        end
     end
     --for note = 0, getProperty("notes.length")-1 do 
     --setPropertyFromGroup("notes", note, "colorSwap.brightness", 0)
     --setPropertyFromGroup("notes", note, "colorSwap.saturation", -1)

     --setPropertyFromGroup("notes", note, "noteSplashBrt", 0)
     --setPropertyFromGroup("notes", note, "noteSplashSat", -1)
    --end

	tes = tes + elapsed
     setProperty("camHUD.angle", math.sin(getSongPosition()/1000) * 4)
     setProperty("camGame.angle", math.sin(getSongPosition()/1000) * 2)

     fixDirection()
     --fixNoteDirection(elapsed)
end
--crochet/1000*3
function fixDirection()
    noteCount = getProperty('notes.length');
 
     for i = 0, noteCount-1 do
 
        noteData = getPropertyFromGroup('notes', i, 'noteData')
        if getPropertyFromGroup('notes', i, 'isSustainNote') then
            if (getPropertyFromGroup('notes', i, 'mustPress')) then
                setPropertyFromGroup('notes', i, 'angle', getPropertyFromGroup("playerStrums", noteData, 'direction') - 90)
            else
                 
                setPropertyFromGroup('notes', i, 'angle', getPropertyFromGroup("opponentStrums", noteData, 'direction') - 90)
            end	
        else
            if (noteData >= 4) then
                setPropertyFromGroup('notes', i, 'angle', getPropertyFromGroup("playerStrums", noteData, 'angle'))
            else
                setPropertyFromGroup('notes', i, 'angle', getPropertyFromGroup("opponentStrums", noteData, 'angle'))
            end	
        end
    end
end

local spaceRange = 200;
function checkForNote(_player)
   player = (_player or false)
	
	for i = 0, getProperty('notes.length')-1 do
	   dis = -0.45 * (getSongPosition() - getPropertyFromGroup('notes', i, 'strumTime'));
		noteType = getPropertyFromGroup('notes', i, 'noteType')
      mustPress = getPropertyFromGroup('notes', i, 'mustPress')
		range = dis <= spaceRange
      correctNote = false

      if (player and mustPress) or (not player and not mustPress) then 
         correctNote = true;
      end
		
		if range and correctNote then
		   return true;
		end
	end
	
   return false;
end


--[[
function fixNoteDirection(elapsed)
   
    for note = 0, getProperty("notes.length")-1 do 
       
       local data = getPropertyFromGroup("notes", note, "noteData") + (getPropertyFromGroup("notes", note, "mustPress") and 4 or 0)
       local tail = (string.find( gpfg("notes",note,"animation.curAnim.name"), "end" ))
     
       
       if gpfg("notes",note,"isSustainNote") then
          if not tail then 
             if gpfg("notes",note,"nextNote") ~= nil and gpfg("notes",note,"prevNote") ~= nil then
             
                
                local diffX = 0;
                local diffY = 0;
                local nextNoteX = getMidPoint(gpfg("notes", note, "nextNote.x"), gpfg("notes", note, "nextNote.y"), gpfg("notes", note, "nextNote.width"), gpfg("notes", note, "nextNote.height"))["x"]
                local nextNoteY = getMidPoint(gpfg("notes", note, "nextNote.x"), gpfg("notes", note, "nextNote.y"), gpfg("notes", note, "nextNote.width"), gpfg("notes", note, "nextNote.height"))["y"]
                local prevNoteX = getMidPoint(gpfg("notes", note, "prevNote.x"), gpfg("notes", note, "prevNote.y"), gpfg("notes", note, "prevNote.width"), gpfg("notes", note, "prevNote.height"))["x"]
                local prevNoteY = getMidPoint(gpfg("notes", note, "prevNote.x"), gpfg("notes", note, "prevNote.y"), gpfg("notes", note, "prevNote.width"), gpfg("notes", note, "prevNote.height"))["y"]
                diffX = nextNoteX - prevNoteX
                diffY = nextNoteY - prevNoteY
 
                local rad = math.atan2(diffY, diffX)
                local deg = rad * (180 / math.pi)
 
                setPropertyFromGroup("notes", note, "angle", deg - 90)
                
             end
          else 
             if gpfg("notes",note,"prevNote") ~= nil then 
                setPropertyFromGroup("notes", note, "angle", gpfg("notes", note, "prevNote.angle"))
             else 
                setPropertyFromGroup("notes", note, "angle", gpfg("strumLineNotes", data, "direction") - 90)
             end
          end
       else 
          setPropertyFromGroup("notes", note, "angle", gpfg("strumLineNotes", data, "angle"))
        
       end
    end
 end
 
 function gpfg(in1, in2, in3)
    return getPropertyFromGroup(in1, in2, in3)
 end
 
 function getMidPoint(_x, _y ,_width, _height)
    return {
       ["x"] = _x + _width * 0.5,
       ["y"]  = _y + _height * 0.5
    }
 end
 ]]