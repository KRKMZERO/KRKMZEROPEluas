
function onCreatePost()
    makeLuaSprite("gradient1", nil, screenWidth, 0)
    addLuaSprite("gradient1")
    setObjectCamera("gradient1", "camHUD")

    setProperty("gradient1.alpha", 0)

    makeLuaSprite("gradient2", nil, 0, 0)
    addLuaSprite("gradient2")
    setObjectCamera("gradient2", "camHUD")

    setProperty("gradient2.alpha", 0)

    local combo1 = '00BBFF'

    addHaxeLibrary("FlxGradient", "flixel.util")
    runHaxeCode([[
        var gradient = FlxGradient.createGradientBitmapData(200, FlxG.height, [0x00000000, 0xFFFFFFFF], 1, 0);
        var luaObject = game.getLuaObject("gradient1");

        luaObject.x -= 200;
        
        luaObject.pixels = gradient;

        var gradient = FlxGradient.createGradientBitmapData(200, FlxG.height, [0xFFFFFFFF, 0x00000000], 1, 0);
        var luaObject = game.getLuaObject("gradient2");
        
        luaObject.pixels = gradient;
    ]])
end
randomcolorflash = {
	'FF0000',
	'FF00D9',
	'3A00FF',
	'00C8FF',
	'00FF4B',
	'E1FF00',
	'FF8E00',
	'FF00A7',
}
function onBeatHit()
    if getProperty('combo') >= 100 then
        cancelTween("gradient2_twn")
        setProperty("gradient2.alpha", 1)
        doTweenAlpha("gradient2_twn", "gradient2", 0, 0.5)

        cancelTween("gradient1_twn")
        setProperty("gradient1.alpha", 1)
        doTweenAlpha("gradient1_twn", "gradient1", 0, 0.5)
    end
    if getProperty('combo') >= 500 then
        fevercolor = randomcolorflash[getRandomInt(1, #randomcolorflash)]
        setProperty("gradient1.color", getColorFromHex(fevercolor))
        setProperty("gradient2.color", getColorFromHex(fevercolor))
    end
end

function onUpdate(elapsed)
    if getProperty('combo') >= 100 and getProperty('combo') < 200 then
        setProperty("gradient1.color", getColorFromHex('00BBFF'))
        setProperty("gradient2.color", getColorFromHex('00BBFF'))
    end
    
    if getProperty('combo') >= 200 and getProperty('combo') < 300 then
        setProperty("gradient1.color", getColorFromHex('E1FF00'))
        setProperty("gradient2.color", getColorFromHex('E1FF00'))
    end

    if getProperty('combo') >= 300 and getProperty('combo') < 400 then
        setProperty("gradient1.color", getColorFromHex('FF6A00'))
        setProperty("gradient2.color", getColorFromHex('FF6A00'))
    end

    if getProperty('combo') >= 400 and getProperty('combo') < 500 then
        setProperty("gradient1.color", getColorFromHex('FF00A1'))
        setProperty("gradient2.color", getColorFromHex('FF00A1'))
    end
end


