--動画撮影用に使ってるカットしやすくするためのluaです
function onStepHit()
	if curStep == 528 then
		noteTweenX('startopp1', 0, 412, 3, 'quartInOut')
		noteTweenX('startopp2', 1, 524, 3, 'quartInOut')
		noteTweenX('startopp3', 2, 636, 3, 'quartInOut')
		noteTweenX('startopp4', 3, 748, 3, 'quartInOut')

		noteTweenX('startplay0', 4, 412, 3, 'quartInOut')
		noteTweenX('startplay2', 5, 524, 3, 'quartInOut')
		noteTweenX('startplay3', 6, 636, 3, 'quartInOut')
		noteTweenX('startplay4', 7, 748, 3, 'quartInOut')
		if botPlay then
			--not
		else
			noteTweenAlpha('startopp1a', 0, 0.25, 3, 'quartInOut')
			noteTweenAlpha('startopp2a', 1, 0.25, 3, 'quartInOut')
			noteTweenAlpha('startopp3a', 2, 0.25, 3, 'quartInOut')
			noteTweenAlpha('startopp4a', 3, 0.25, 3, 'quartInOut')
		end
	end
end