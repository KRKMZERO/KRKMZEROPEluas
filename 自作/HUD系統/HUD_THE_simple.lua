function onCreatePost()
	setProperty("timeBar.y", -700)
	setObjectCamera('timeBar','other')

	makeLuaText('SongnemeText', 'Score', 1210, 'timeTxt.X', 50)--675
	screenCenter('SongnemeText', 'x')
	setTextSize('SongnemeText', 30)
	addLuaText('SongnemeText')
	setObjectCamera('SongnemeText','other')--flont CENTER

	setProperty("healthBar.y", 690)
	setProperty('timeTxt.y', 80)

	setTextSize('scoreTxt', 20)
	setTextBorder('scoreTxt','2','000000')

	screenCenter('timeTxt', 'x')

	setObjectOrder('SongnemeText', 100);
	setObjectOrder('scoreTxt', 100);
	setObjectOrder('timeTxt', 100);
	setObjectCamera('timeTxt','other')
	setObjectCamera('healthBar','other')
	setObjectCamera('healthBarBG','other')
end

function onUpdate()
	setTextString('SongnemeText', ''..getProperty(songName))
end

function onUpdatePost()
	setProperty('iconP1.x', 1150)
	setProperty('iconP2.x', -20)

	setProperty('iconP1.y', -600)
	setProperty('iconP2.y', -600)

	setObjectCamera('iconP1','other')
	setObjectCamera('iconP2','other')

	setProperty('scoreTxt.y', 5)
	setObjectCamera('scoreTxt','other')
end