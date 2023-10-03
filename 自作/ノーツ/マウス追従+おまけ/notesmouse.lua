function onUpdate()
    noteTweenX('play0', 4, getMouseX('other') - 220, 0.01, 'quartInOut')
	noteTweenX('play1', 5, getMouseX('other') - 110, 0.01, 'quartInOut')
	noteTweenX('play2', 6, getMouseX('other')      , 0.01, 'quartInOut')
	noteTweenX('play3', 7, getMouseX('other') + 110, 0.01, 'quartInOut')

	noteTweenAlpha('startopp1a', 0, 0.5, 0.1, 'linear')
	noteTweenAlpha('startopp2a', 1, 0.5, 0.1, 'linear')
	noteTweenAlpha('startopp3a', 2, 0.5, 0.1, 'linear')
	noteTweenAlpha('startopp4a', 3, 0.5, 0.1, 'linear')
end