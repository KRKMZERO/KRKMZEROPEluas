function onUpdate()
    noteTweenX('play0', 4, getMouseX('other') - 220, 0.01, 'quartInOut')
	noteTweenX('play1', 5, getMouseX('other') - 110, 0.01, 'quartInOut')
	noteTweenX('play2', 6, getMouseX('other')      , 0.01, 'quartInOut')
	noteTweenX('play3', 7, getMouseX('other') + 110, 0.01, 'quartInOut')
    --getMouseX('other')
    noteTweenX('opp0', 0, screenWidth - getMouseX('other') - 220, 0.01, 'quartInOut')
	noteTweenX('opp1', 1, screenWidth - getMouseX('other') - 110, 0.01, 'quartInOut')
	noteTweenX('opp2', 2, screenWidth - getMouseX('other')     , 0.01, 'quartInOut')
	noteTweenX('opp3', 3, screenWidth - getMouseX('other') + 110, 0.01, 'quartInOut')

	noteTweenAlpha('startopp1a', 0, 0.25, 0.01, 'linear')
	noteTweenAlpha('startopp2a', 1, 0.25, 0.01, 'linear')
	noteTweenAlpha('startopp3a', 2, 0.25, 0.01, 'linear')
	noteTweenAlpha('startopp4a', 3, 0.25, 0.01, 'linear')
end