function goodNoteHit()
	addScore(-10)
end
function opponentNoteHit()
	addScore(-10)
end
function onCreate()
	setScore(1000)
end
function onCountdownStarted()
	runTimer('decrease', 0.05, 0)
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'decrease' then
		if getProperty('songScore') >= 1 then
			addScore(-1)
		end
		if getProperty('songScore') <= 0 then
			setProperty('health', 0);
		end
	end
end