function onCreate()
    makeLuaSprite('flash0','flash',0,0)
    addLuaSprite('flash0')
    setProperty('flash0.alpha', 0)
    setObjectCamera('flash0', 'hud')
end

function onStepHit()

    if curBeat % 2 == 0 then
	setProperty('flash0.color', getColorFromHex('0000FF'))
	setProperty('flash0.alpha', 0.25)
    else
	setProperty('flash0.color', getColorFromHex('FF0000'))
	setProperty('flash0.alpha', 0.25)
    end
end
--getColorFromHex('0000FF')
--getColorFromHex('FF0000')