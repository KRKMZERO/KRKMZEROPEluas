SETBFnotesx = 1000
SETBFnotesy = 720
SETOPPnotesx = 300
SETOPPnotesy = 500
function onUpdatePost(elapsed)
    noteTweenX('play0x', 4, SETBFnotesx - 220, 0.01, 'quartInOut')
	noteTweenX('play1x', 5, SETBFnotesx - 110, 0.01, 'quartInOut')
	noteTweenX('play2x', 6, SETBFnotesx      , 0.01, 'quartInOut')
	noteTweenX('play3x', 7, SETBFnotesx + 110, 0.01, 'quartInOut')

    noteTweenY('play0y', 4, SETBFnotesy, 0.01, 'quartInOut')
	noteTweenY('play1y', 5, SETBFnotesy, 0.01, 'quartInOut')
	noteTweenY('play2y', 6, SETBFnotesy, 0.01, 'quartInOut')
	noteTweenY('play3y', 7, SETBFnotesy, 0.01, 'quartInOut')

    noteTweenX('opp0x', 0, SETOPPnotesx - 220, 0.01, 'quartInOut')
	noteTweenX('opp1x', 1, SETOPPnotesx - 110, 0.01, 'quartInOut')
	noteTweenX('opp2x', 2, SETOPPnotesx      , 0.01, 'quartInOut')
	noteTweenX('opp3x', 3, SETOPPnotesx + 110, 0.01, 'quartInOut')

	noteTweenY('opp0y', 0, SETOPPnotesy, 0.01, 'quartInOut')
	noteTweenY('opp1y', 1, SETOPPnotesy, 0.01, 'quartInOut')
	noteTweenY('opp2y', 2, SETOPPnotesy, 0.01, 'quartInOut')
	noteTweenY('opp3y', 3, SETOPPnotesy, 0.01, 'quartInOut')

	noteTweenAlpha('startopp1a', 0, 0.5, 0.1, 'linear')
	noteTweenAlpha('startopp2a', 1, 0.5, 0.1, 'linear')
	noteTweenAlpha('startopp3a', 2, 0.5, 0.1, 'linear')
	noteTweenAlpha('startopp4a', 3, 0.5, 0.1, 'linear')
end