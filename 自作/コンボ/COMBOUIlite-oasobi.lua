function onCreate()

	makeLuaText('playercombo', '', screenWidth, 320, 360)
	setObjectCamera('playercombo', 'other')
	--screenCenter('playercombo', 'xy')
	setTextSize('playercombo', 40)
	setProperty('playercombo.alpha', 0)
	addLuaText('playercombo')
	setObjectOrder('playercombo', 100)
	setProperty('playercombo.antialiasing', true);

	makeLuaText('playercombo-alt', 'COMBO', screenWidth, 320, 330)
	setObjectCamera('playercombo-alt', 'other')
	--screenCenter('playercombo-alt', 'xy')
	setTextSize('playercombo-alt', 20)
	setProperty('playercombo-alt.alpha', 0)
	addLuaText('playercombo-alt')
	setObjectOrder('playercombo-alt', 101)
	setProperty('playercombo-alt.antialiasing', true);

	setProperty('showRating', false);
	setProperty('showComboNum', false)

	-------------------------------------
	makeLuaText('opponentcombo', '', screenWidth, -320, 360)
	setObjectCamera('opponentcombo', 'other')
	--screenCenter('opponentcombo', 'xy')
	setTextSize('opponentcombo', 40)
	setProperty('opponentcombo.alpha', 0)
	addLuaText('opponentcombo')
	setObjectOrder('opponentcombo', 100)
	setProperty('opponentcombo.antialiasing', true);

	makeLuaText('opponentcombo-alt', 'COMBO', screenWidth, -320, 330)
	setObjectCamera('opponentcombo-alt', 'other')
	--screenCenter('opponentcombo-alt', 'xy')
	setTextSize('opponentcombo-alt', 20)
	setProperty('opponentcombo-alt.alpha', 0)
	addLuaText('opponentcombo-alt')
	setObjectOrder('opponentcombo-alt', 101)
	setProperty('opponentcombo-alt.antialiasing', true);

	OPPCOMBO = 0
end
function goodNoteHit()
	setProperty('playercombo.alpha', 1)
	doTweenAlpha('playercomboTween', 'playercombo', 0, 0.3, linear)

	setProperty('playercombo-alt.alpha', 1)
	doTweenAlpha('playercombo-altTween', 'playercombo-alt', 0, 0.3, linear)
end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if not isSustainNote then
		OPPCOMBO = OPPCOMBO + 1
	end
	setProperty('opponentcombo.alpha', 1)
	doTweenAlpha('opponentcomboTween', 'opponentcombo', 0, 0.3, linear)

	setProperty('opponentcombo-alt.alpha', 1)
	doTweenAlpha('opponentcombo-altTween', 'opponentcombo-alt', 0, 0.3, linear)
end
function onUpdate()
	setTextString('playercombo', getProperty('combo'));
	setTextString('opponentcombo', OPPCOMBO);
end
