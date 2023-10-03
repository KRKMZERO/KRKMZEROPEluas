local targetBar;
local songTimeLength = 0

function onCreatePost()
	setProperty("timeTxt.visible" , false)
	setProperty("timeBarBG.visible" , false)
    setProperty("timeBar.visible", false)

	makeLuaText('SongnemeText', 'Score', 1210, 'timeTxt.x', 675)
	--setTextAlignment('SongnemeText', 'left')
	screenCenter('SongnemeText', 'x')
	setTextSize('SongnemeText', 30)
	addLuaText('SongnemeText')
	setObjectCamera('SongnemeText','other')
	--add ver 3.0
	--add healthBar
	--deletion TimeText
	setGraphicSize("healthBar", screenWidth, 20)
	screenCenter("healthBar")
	setProperty("healthBar.y", 680)
	setProperty("healthBar.visible" , true)
	setProperty("healthBarBG.visible" , false)
	setProperty("healthBar.numDivisions", 200)
	setObjectCamera('healthBar','other')

    targetBar = screenWidth - 20

    makeLuaSprite('timeBarBack',nil, 0, screenHeight - 20)
    makeGraphic('timeBarBack', screenWidth, 20,'000000')
    setObjectCamera('timeBarBack','other')
    addLuaSprite('timeBarBack')

    makeLuaSprite('timeBarFront',nil,10,400)
    makeGraphic('timeBarFront',targetBar, 20,'FFFFFF')
    setObjectCamera('timeBarFront','other')
    addLuaSprite('timeBarFront')

	doTweenX('siconP1ScaleTweenX', 'iconP1.scale', 0.7, 0.01, 'elasticInOut')
	doTweenX('siconP2ScaleTweenX', 'iconP2.scale', 0.7, 0.01, 'elasticInOut')
end

function onUpdate()
	setTextString('SongnemeText', songName)
end

function onUpdatePost()
	setProperty('iconP1.x', 1150)
	setProperty('iconP2.x', -20)

	setProperty('iconP1.y', 600)
	setProperty('iconP2.y', 600)

	setObjectCamera('iconP1','other')
	setObjectCamera('iconP2','other')

	setProperty('scoreTxt.y', 5)
	setObjectCamera('scoreTxt','other')

    songTimeLength = getProperty('songLength')

    if getSongPosition() >= songTimeLength then
        songTimeLength = getSongPosition()
    end

    setProperty('timeBarFront.scale.x',getSongPosition()/songTimeLength)
    setProperty('timeBarFront.x', -630 + (getSongPosition()/songTimeLength) * (targetBar / 2))
    setProperty('timeBarFront.y', screenHeight - 20)
end

function onBeatHit()
	scaleObject('iconP2', 0.7, 0.7);
	scaleObject('iconP1', 0.7, 0.7);

	cancelTween('iconP1ScaleTweenX')
	cancelTween('iconP2ScaleTweenX')

	doTweenX('iconP1ScaleTweenX', 'iconP1.scale', 0.5, 1, 'elasticOut')--'elasticInOut'
	doTweenX('iconP2ScaleTweenX', 'iconP2.scale', 0.5, 1, 'elasticOut')
end