
deff = 900

function onUpdate()
    noteTweenX('play0', 4, deff - 220, 0.01, 'quartInOut')
	noteTweenX('play1', 5, deff - 110, 0.01, 'quartInOut')
	noteTweenX('play2', 6, deff      , 0.01, 'quartInOut')
	noteTweenX('play3', 7, deff + 110, 0.01, 'quartInOut')

	noteTweenAlpha('startopp1a', 0, 0.25, 1, 'linear')
	noteTweenAlpha('startopp2a', 1, 0.25, 1, 'linear')
	noteTweenAlpha('startopp3a', 2, 0.25, 1, 'linear')
	noteTweenAlpha('startopp4a', 3, 0.25, 1, 'linear')
    if deff > 220 then
	    if keyPressed('left')then
		    deff = deff - 10
        end
        if keyPressed('down')then
            deff = deff - 5
        end
    end
	if keyPressed('space') then
		deff = 640
	end
    if deff < 1060 then
        if keyPressed('up')then
            deff = deff + 5
        end
        if keyPressed('right') then
            deff = deff + 10
        end
    end
    if deff < 220 then
        deff = 220
    end
    if deff > 1060 then
        deff = 1060
    end
end
