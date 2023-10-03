function onBeatHit()
	if curBeat % 2 == 0 then
        doTweenAngle('iconP1angle','iconP1',10,0.10,'circInOut')
        doTweenAngle('iconP2angle','iconP2',-10,0.10,'circInOut')
	elseif curBeat % 2 == 1 then
        doTweenAngle('iconP1angle','iconP1',-10,0.10,'circInOut')
        doTweenAngle('iconP2angle','iconP2',10,0.10,'circInOut')
	end
end