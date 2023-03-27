function onCreatePost()
	setProperty("timeBar.y", -700)
	setObjectCamera('timeBar','other')

	makeLuaText('SongnemeText', 'Score', 1210, 'timeTxt.X', 40)--675
	screenCenter('SongnemeText', 'x')
	setTextSize('SongnemeText', 30)
	addLuaText('SongnemeText')
	setProperty('SongnemeText.alpha', 0)
	setObjectCamera('SongnemeText','other')--hud other flont CENTER

	setProperty("healthBar.y", 1690)
	setProperty('timeTxt.y', 2080)

	setTextSize('scoreTxt', 20)
	setTextBorder('scoreTxt','2','000000')

	--screenCenter('timeTxt', '100')

	setObjectOrder('SongnemeText', 100);
	setObjectOrder('scoreTxt', 100);
	setObjectOrder('timeTxt', 100);
	setObjectCamera('timeTxt','other')
	setObjectCamera('healthBar','other')
	setObjectCamera('healthBarBG','other')

	setProperty('scoreTxt.antialiasing', true)
	setProperty('SongnemeText.antialiasing', true)

	setProperty('scoreTxt.y', -50)


end
function onSongStart()
	doTweenAlpha('limitTween', 'SongnemeText', 1, 1, 'linear')
	runTimer('timeTxtWait', 3, 1)
end
function onUpdate()
	setTextString('SongnemeText', ''..getProperty(songName))
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'timeTxtWait' then

		doTweenY('scoreTxtTween', 'scoreTxt', 5, 5, 'QuintOut')
	end
end
function onUpdatePost()
	setProperty('iconP1.x', 1150)
	setProperty('iconP2.x', -20)

	setProperty('iconP1.y', -600)
	setProperty('iconP2.y', -600)

	setObjectCamera('iconP1','other')
	setObjectCamera('iconP2','other')

	--setProperty('scoreTxt.y', -50)
	setObjectCamera('scoreTxt','other')--hud other
end