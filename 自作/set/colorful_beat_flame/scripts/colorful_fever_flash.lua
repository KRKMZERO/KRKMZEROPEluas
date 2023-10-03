--[[
function onEvent(eventName, value1, value2)
    if eventName == 'fever_flash' then
        flashGO = value1
    end
end]]
local Beatmode = false
function onCreatePost()
    makeLuaSprite("flash_right", 'flash', 0, 0)
    addLuaSprite("flash_right")
    setObjectCamera("flash_right", "camHUD")

    setProperty("flash_right.alpha", 0)


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
function onEvent(eventName, value1, value2)
    if eventName == "Add Camera Zoom" and Beatmode == false then
        fevercolor = randomcolorflash[getRandomInt(1, #randomcolorflash)]

        cancelTween("flash_right_twn")
        setProperty("flash_right.alpha", 1)
        setProperty("flash_right.color", getColorFromHex(fevercolor))
        doTweenAlpha("flash_right_twn", "flash_right", 0, 0.5)
    end
end
function onBeatHit()
    if Beatmode == true then
        fevercolor = randomcolorflash[getRandomInt(1, #randomcolorflash)]

        cancelTween("flash_right_twn")
        setProperty("flash_right.alpha", 1)
        setProperty("flash_right.color", getColorFromHex(fevercolor))
        doTweenAlpha("flash_right_twn", "flash_right", 0, 0.5)
    end
end
