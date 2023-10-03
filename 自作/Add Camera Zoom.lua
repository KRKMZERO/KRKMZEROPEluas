
function onCreate()
	Diff = getProperty('storyDifficultyText')
	if Diff == 'Normal' then
		setProperty('dadGroup.visible', false)
		setProperty('gfGroup.visible', false)
		setProperty('boyfriendGroup.x', 500)
	end
end
--function onBeatHit()
	--if curBeat % 1 == 0 then
		--triggerEvent('Add Camera Zoom',0.015,0.030)
	--end
--end
function onStepHit()
	if curStep % 4 == 0 then
		triggerEvent('Add Camera Zoom',0.015,0.030)
	end
end
function goodNoteHit()
	triggerEvent('Add Camera Zoom',0.030,0)
end
function opponentNoteHit()
	triggerEvent('Add Camera Zoom',0.030,0)
end