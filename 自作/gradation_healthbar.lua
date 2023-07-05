
function onCreatePost()
    gradientBar()
end
function gradientBar()
    runHaxeCode([[
        game.healthBar.createGradientBar(
             [0xFF]]..rgbToHex(getProperty('boyfriend.healthColorArray'))..[[, 0xFF]]..rgbToHex(getProperty('dad.healthColorArray'))..[[]
            ,[0xFF]]..rgbToHex(getProperty('boyfriend.healthColorArray'))..[[, 0xFF]]..rgbToHex(getProperty('dad.healthColorArray'))..[[]
        );
    ]])
end
function rgbToHex(array)
	return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end