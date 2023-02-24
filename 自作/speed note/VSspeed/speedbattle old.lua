-- THE CHAOS
--Enemy　Vocals speedup
--BFs Vocals speedDOWN
NOTESPEED = 1.000

function onUpdatePost(elapsed)
	setPropertyFromGroup("unspawnNotes", i, "multSpeed", NOTESPEED)
end
function goodNoteHit()
	NOTESPEED = NOTESPEED - 0.005
	--debugPrint(NOTESPEED)
end

function opponentNoteHit()
	NOTESPEED = NOTESPEED + 0.005
end