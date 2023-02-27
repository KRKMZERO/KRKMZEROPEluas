function onCreatePost()
	noteTweenX('startopp1', 0, 412, 0.01, 'quartInOut')
	noteTweenX('startopp2', 1, 524, 0.01, 'quartInOut')
	noteTweenX('startopp3', 2, 636, 0.01, 'quartInOut')
	noteTweenX('startopp4', 3, 748, 0.01, 'quartInOut')

	noteTweenX('startplay0', 4, 412, 0.01, 'quartInOut')
	noteTweenX('startplay2', 5, 524, 0.01, 'quartInOut')
	noteTweenX('startplay3', 6, 636, 0.01, 'quartInOut')
	noteTweenX('startplay4', 7, 748, 0.01, 'quartInOut')

	runTimer('oppAlpha', 0.01, 0)
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'oppAlpha' then
		noteTweenAlpha('startopp1a', 0, 0.5, 0.01, 'linear')
		noteTweenAlpha('startopp2a', 1, 0.5, 0.01, 'linear')
		noteTweenAlpha('startopp3a', 2, 0.5, 0.01, 'linear')
		noteTweenAlpha('startopp4a', 3, 0.5, 0.01, 'linear')
	end
end