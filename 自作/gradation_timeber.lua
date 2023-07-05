
function onCreatePost()
    gradientBar()
    --setTimeBarColors
end
function gradientBar()
    runHaxeCode([[
        game.timeBar.createGradientBar(
            [0xFF]]..getColorFromHex(000000)..[[, 0xFF]]..rgbToHex(getProperty('boyfriend.healthColorArray'))..[[]
            ,[0xFF]]..rgbToHex(getProperty('dad.healthColorArray'))..[[, 0xFF]]..rgbToHex(getProperty('boyfriend.healthColorArray'))..[[]
        );
    ]])
end
function rgbToHex(array)
	return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end
--getColorFromHex('000000')
--getColorFromHex('C5C5C5')
