local deflimit = 5
local misslimit = 5

function onCreatePost()

	local misslimit = deflimit

    makeLuaText('limitTEXT','',500,0,0); -- Y y values go on the second and third 0's
	setTextAlignment('limitTEXT', 'left');
    setTextSize('limitTEXT', 20);
    addLuaText('limitTEXT')
  end
function onUpdate(elapsed)
	--debugPrint(getProperty('iconP1.y'))
	--setProperty('limitTEXT.y', getProperty('iconP1.y'))
	--setProperty('limitTEXT.x',(screenWidth*0.5) + getProperty('iconP1.width'))
	setProperty('limitTEXT.y', getProperty('iconP1.y') + 60)
	setProperty('limitTEXT.x',75 + getMidpointX('iconP1'))
  setTextString('limitTEXT','Miss left '..misslimit)

  if misslimit == 0 then
		setHealth(0)
  end
end
function noteMiss(membersIndex, noteData, noteType, isSustainNote)
	if not isSustainNote then
		misslimit = misslimit - 1
	end
end

function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if not isSustainNote then
		misslimit = deflimit
	end
end
--[[
getMidpointX('iconP1')
getMidpointY('iconP1')
getGraphicMidpointY
]]