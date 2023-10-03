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
	setTextBorder('TimeText','1', '')--縁取りの色です
end

function onUpdate()
	setTextString('TimeText', ''..getProperty('timeTxt.text'))
end
--[[
timeBar.createFilledBar(0xFF000000, 0xFFFFFFFF);

	setProperty("timeBar.color", getColorFromHex("FF0000"))
	setProperty("timeWhite.color", getColorFromHex("FFFFFF"))
--]]