-- THE CHAOS
--Enemy　Vocals speedup
--BFs Vocals speedDOWN
NOTESPEED = 1.000

function onUpdatePost(elapsed)
	triggerEvent('Change Scroll Speed',NOTESPEED,0.01)
end
function goodNoteHit()
	NOTESPEED = NOTESPEED - 0.005
	--debugPrint(NOTESPEED)
end

function opponentNoteHit()
	NOTESPEED = NOTESPEED + 0.005
end