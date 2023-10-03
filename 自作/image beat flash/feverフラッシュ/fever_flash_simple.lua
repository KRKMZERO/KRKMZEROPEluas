
function onCreatePost()
    makeLuaSprite("feverBlend", nil, 0,0)
    makeGraphic("feverBlend", screenWidth, screenHeight,'FFFFFF')
    addLuaSprite("feverBlend")
    setObjectCamera("feverBlend", "camHUD")

    setProperty("feverBlend.alpha", 0)

    setBlendMode("feverBlend", 'add')

end


function onBeatHit()

    fevercolor = rgbToHex(getRandomInt(0, 255), getRandomInt(0, 255), getRandomInt(0, 255))

    setProperty("feverBlend.color", getColorFromHex(fevercolor))

    cancelTween("feverBlend_twn")
    setProperty("feverBlend.alpha",0.5)
    doTweenAlpha("feverBlend_twn", "feverBlend", 0, 0.5)

end

function rgbToHex(r,g,b)
    local rgb = (r * 0x10000) + (g * 0x100) + b
    return string.format("%x", rgb)
end