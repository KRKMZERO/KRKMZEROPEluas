function onCreatePost()
	setGraphicSize("timeBar", 1280, 20)
	screenCenter("timeBar")
	setProperty("timeBar.y", 700)
	setProperty("timeTxt.visible" , false)
	setProperty("timeBarBG.visible" , false)
	setProperty("timeBar.color", getColorFromHex("FFFFFF"))--FF0000
	setProperty("timeBar.numDivisions", 200)
	setObjectCamera('timeBar','other')

	makeLuaText('SongnemeText', 'Score', 1210, 'timeTxt.X', 675)
	--setTextAlignment('SongnemeText', 'left')
	screenCenter('SongnemeText', 'x')
	setTextSize('SongnemeText', 30)
	addLuaText('SongnemeText')
	setObjectCamera('SongnemeText','other')
	--add ver 3.0
	--add healthBar
	--deletion TimeText
	setGraphicSize("healthBar", 1280, 20)
	screenCenter("healthBar")
	setProperty("healthBar.y", 680)
	setProperty("healthBar.visible" , true)
	setProperty("healthBarBG.visible" , false)
	setProperty("healthBar.numDivisions", 200)
	setObjectCamera('healthBar','other')
end
function onUpdate()
	setTextString('SongnemeText', ''..getProperty(songName))
end

function onUpdatePost()
	setProperty('iconP1.x', 1150)
	setProperty('iconP2.x', -20)

	setProperty('iconP1.y', 600)
	setProperty('iconP2.y', 600)

	--scaleObject('iconP2', 0.7, 0.7);
	--scaleObject('iconP1', 0.7, 0.7);

	setObjectCamera('iconP1','other')
	setObjectCamera('iconP2','other')

	setProperty('scoreTxt.y', 5)
	setObjectCamera('scoreTxt','other')
end

function onBeatHit()
	--scaleObject('iconP2', 0.8, 0.8);
	--scaleObject('iconP1', 0.8, 0.8);
	doTweenX('iconP1ScaleTweenX', 'iconP1.scale', 0.6, 0.5, 'elasticInOut')
	--doTweenY('iconP1ScaleTweenY', 'iconP1.scale', 0.6, 1, 'elasticInOut')

	doTweenX('iconP2ScaleTweenX', 'iconP2.scale', 0.6, 0.5, 'elasticInOut')
	--doTweenY('iconP2ScaleTweenY', 'iconP2.scale', 0.6, 1, 'elasticInOut')

	scaleObject('iconP2', 0.7, 0.7);
	scaleObject('iconP1', 0.7, 0.7);
end
--doTweenZoom