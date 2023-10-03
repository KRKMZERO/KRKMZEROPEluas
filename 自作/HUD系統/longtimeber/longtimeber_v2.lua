function onCreatePost()
	setGraphicSize("timeBar", 1280, 20)
	screenCenter("timeBar")
	setProperty("timeBar.y", 700)
	setProperty("timeTxt.visible" , false)
	setProperty("timeBarBG.visible" , false)
	setProperty("timeBar.color", getColorFromHex("FFFFFF"))--FF0000
	setProperty("timeBar.numDivisions", 200)

	makeLuaText('TimeText','a',500,40,650)
	setTextAlignment('TimeText',"left")
	setTextSize('TimeText', 20);
	addLuaText('TimeText');
	setProperty('TimeText.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('TimeText','2', '000000')--縁取りの色です

	makeLuaText('SongnemeText', 'Score', 1210, 'timeTxt.X', 670)
	--setTextAlignment('SongnemeText', 'left')
	setObjectCamera('SongnemeText', 'hud')
	screenCenter('SongnemeText', 'x')
	setTextSize('SongnemeText', 30)
	addLuaText('SongnemeText')
end

function onUpdate()
	setTextString('TimeText', ''..getProperty('timeTxt.text'))
	setTextString('SongnemeText', ''..getProperty(songName))
end
--[[
timeBar.createFilledBar(0xFF000000, 0xFFFFFFFF);

	setProperty("timeBar.color", getColorFromHex("FF0000"))
	setProperty("timeWhite.color", getColorFromHex("FFFFFF"))
--]]