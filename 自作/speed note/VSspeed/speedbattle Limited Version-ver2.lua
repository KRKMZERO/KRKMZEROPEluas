-- THE CHAOS
--Enemy　Vocals speedup
--BFs Vocals speedDOWN
NOTESPEED = 1.000
--Visualize speed?
Visualize_speed = false
function onUpdatePost(elapsed)
	triggerEvent('Change Scroll Speed',NOTESPEED,0.01)
	if NOTESPEED < 0.75 then
		NOTESPEED = 0.75
	end
	if NOTESPEED > 2 then
		NOTESPEED = 2
	end
end
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if NOTESPEED > 0.750 then
		if not isSustainNote then
			NOTESPEED = NOTESPEED - 0.005
		else
			NOTESPEED = NOTESPEED - 0.001
		end
		--debugPrint(NOTESPEED)
	end
end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if NOTESPEED < 2 then
		if not isSustainNote then
			NOTESPEED = NOTESPEED + 0.005
		else
			NOTESPEED = NOTESPEED + 0.001
		end
	end
end	
function onCreatePost()--特殊なUI変更
	if Visualize_speed == true then
		makeLuaText('SPEEDTEXT','',500,x,y); -- x y values go on the second and third 0's
		--setTextAlignment("SPEEDTEXT", "left")
		setTextSize('SPEEDTEXT', 20);
		addLuaText('SPEEDTEXT');
		screenCenter('SPEEDTEXT','xy')
	end
end

function onUpdate()--細かい設定
	if Visualize_speed == true then
		setTextString('SPEEDTEXT', 'SPEED\n'..NOTESPEED);
	end
end