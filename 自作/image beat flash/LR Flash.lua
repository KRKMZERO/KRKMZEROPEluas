
function onCreatePost()
    makeLuaSprite("gradient_bf", nil, screenWidth, 0)
    addLuaSprite("gradient_bf")
    setObjectCamera("gradient_bf", "camHUD")

    setProperty("gradient_bf.alpha", 0)

    makeLuaSprite("gradient_dad", nil, 0, 0)
    addLuaSprite("gradient_dad")
    setObjectCamera("gradient_dad", "camHUD")

    setProperty("gradient_dad.alpha", 0)

    local bfColor = getProperty("boyfriend.healthColorArray")
    local bfColorHex = rgbToHex(bfColor[1], bfColor[2], bfColor[3])

    local dadColor = getProperty("dad.healthColorArray")
    local dadColorHex = rgbToHex(dadColor[1], dadColor[2], dadColor[3])

    addHaxeLibrary("FlxGradient", "flixel.util")
    runHaxeCode([[
        var gradient = FlxGradient.createGradientBitmapData(200, FlxG.height, [0x00000000, 0xFF]]..bfColorHex..[[], 1, 0);
        var luaObject = game.getLuaObject("gradient_bf");

        luaObject.x -= 200;
        
        luaObject.pixels = gradient;

        var gradient = FlxGradient.createGradientBitmapData(200, FlxG.height, [0xFF]]..dadColorHex..[[, 0x00000000], 1, 0);
        var luaObject = game.getLuaObject("gradient_dad");
        
        luaObject.pixels = gradient;
    ]])
end

function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if not isSustainNote then
        cancelTween("gradient_dad_twn")
        setProperty("gradient_dad.alpha", 1)
        doTweenAlpha("gradient_dad_twn", "gradient_dad", 0, 0.5)
    end
end

function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if not isSustainNote then
        cancelTween("gradient_bf_twn")
        setProperty("gradient_bf.alpha", 1)
        doTweenAlpha("gradient_bf_twn", "gradient_bf", 0, 0.5)
    end
end

function rgbToHex(r,g,b)
    local rgb = (r * 0x10000) + (g * 0x100) + b
    return string.format("%x", rgb)
end