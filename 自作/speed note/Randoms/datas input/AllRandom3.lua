-- THE CHAOS
CHAOS = 6
function onStepHit()
	--if curStep % 4 == 0 then
		--CHAOS = getRandomInt(1, 11)--getRandomInt math.random
		--debugPrint(CHAOS)
	--end
end
function onBeatHit()
	--CHAOS = getRandomInt(1, 11)--getRandomInt math.random
	--debugPrint(CHAOS)
end
function onSongStart()
	runTimer('Random', 0.10, 0)
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'Random' then
		CHAOS = getRandomInt(1, 11)--getRandomInt math.random
		--debugPrint(CHAOS)
	end
end


function onUpdatePost(elapsed)
	--CHAOS = getRandomInt(1, 11)--getRandomInt math.random

	if CHAOS == 1 then
		setPropertyFromGroup("unspawnNotes", i, "multSpeed", 0.5)
	end
	if CHAOS == 2 then
		setPropertyFromGroup("unspawnNotes", i, "multSpeed", 0.6)
	end
	if CHAOS == 3 then
		setPropertyFromGroup("unspawnNotes", i, "multSpeed", 0.7)
	end
	if CHAOS == 4 then
		setPropertyFromGroup("unspawnNotes", i, "multSpeed", 0.8)
	end
	if CHAOS == 5 then
		setPropertyFromGroup("unspawnNotes", i, "multSpeed", 0.9)
	end
	if CHAOS == 6 then
		setPropertyFromGroup("unspawnNotes", i, "multSpeed", 1.0)
	end
	if CHAOS == 7 then
		setPropertyFromGroup("unspawnNotes", i, "multSpeed", 1.1)
	end
	if CHAOS == 8 then
		setPropertyFromGroup("unspawnNotes", i, "multSpeed", 1.2)
	end
	if CHAOS == 9 then
		setPropertyFromGroup("unspawnNotes", i, "multSpeed", 1.3)
	end
	if CHAOS == 10 then
		setPropertyFromGroup("unspawnNotes", i, "multSpeed", 1.4)
	end
	if CHAOS == 11 then
		setPropertyFromGroup("unspawnNotes", i, "multSpeed", 1.5)
	end
end