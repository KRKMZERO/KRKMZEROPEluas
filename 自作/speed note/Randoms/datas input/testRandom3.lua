function onBeatHit()
	--CHAOS = random(0.5, 0.6 , 0.7 , 0.8 , 0.9, 1.0 , 1.1 , 1.2 , 1.3 , 1,4 , 1.5)--getRandomInt math.random
	--CHAOS = math.random(80,120)/100
	--debugPrint(CHAOS)
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.010);
    end
end
