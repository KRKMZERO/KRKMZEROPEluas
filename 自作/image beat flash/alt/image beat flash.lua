function onCreate()
    makeLuaSprite('flash0','flash',0,0)
    addLuaSprite('flash0')
    setProperty('flash0.alpha', 0)
    setObjectCamera('flash0', 'hud')
end


function rgbToHex(r,g,b)
    local rgb = (r * 0x10000) + (g * 0x100) + b
    return string.format("%x", rgb)
end
function onCreatePost()

	local bfColor = getProperty("boyfriend.healthColorArray")
	local bfColorHex = rgbToHex(bfColor[1], bfColor[2], bfColor[3])

	local dadColor = getProperty("dad.healthColorArray")
	local dadColorHex = rgbToHex(dadColor[1], dadColor[2], dadColor[3])

end
function onStepHit()

    if curBeat % 2 == 0 then
	setProperty('flash0.color', getColorFromHex('0000FF'))
	setProperty('flash0.alpha', 0.5)
    else
	setProperty('flash0.color', getColorFromHex('FF0000'))
	setProperty('flash0.alpha', 0.5)
    end
end
--getColorFromHex('0000FF')
--getColorFromHex('FF0000')