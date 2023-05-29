
tuewait = true
function onBeatHit()
	if tuewait == true then
		noteTweenX('startopp1', 0, defaultPlayerStrumX0, 0.5, 'quartInOut')
		noteTweenX('startopp2', 1, defaultPlayerStrumX1, 0.5, 'quartInOut')
		noteTweenX('startopp3', 2, defaultPlayerStrumX2, 0.5, 'quartInOut')
		noteTweenX('startopp4', 3, defaultPlayerStrumX3, 0.5, 'quartInOut')
		
		noteTweenX('startplay1', 4, defaultOpponentStrumX0, 0.5, 'quartInOut')
		noteTweenX('startplay2', 5, defaultOpponentStrumX1, 0.5, 'quartInOut')
		noteTweenX('startplay3', 6, defaultOpponentStrumX2, 0.5, 'quartInOut')
		noteTweenX('startplay4', 7, defaultOpponentStrumX3, 0.5, 'quartInOut')
		
		tuewait = false
	elseif tuewait == false then
		noteTweenX('startopp1', 0, defaultOpponentStrumX0, 0.5, 'quartInOut')
		noteTweenX('startopp2', 1, defaultOpponentStrumX1, 0.5, 'quartInOut')
		noteTweenX('startopp3', 2, defaultOpponentStrumX2, 0.5, 'quartInOut')
		noteTweenX('startopp4', 3, defaultOpponentStrumX3, 0.5, 'quartInOut')
		
		noteTweenX('startplay1', 4, defaultPlayerStrumX0, 0.5, 'quartInOut')
		noteTweenX('startplay2', 5, defaultPlayerStrumX1, 0.5, 'quartInOut')
		noteTweenX('startplay3', 6, defaultPlayerStrumX2, 0.5, 'quartInOut')
		noteTweenX('startplay4', 7, defaultPlayerStrumX3, 0.5, 'quartInOut')
		
		tuewait = true
		
	end
end