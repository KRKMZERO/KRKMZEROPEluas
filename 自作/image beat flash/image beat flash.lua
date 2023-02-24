function onCreate()
    makeLuaSprite('flash','flash',0,0)
    addLuaSprite('flash')
    setProperty('flash.alpha', 0.0)
    setObjectCamera('flash', 'hud')
end

function onBeatHit()
    setProperty('flash.color', getColorFromHex('FF0000'))--FF0000 0000FF
    doTweenColor('flashTC', 'flash', '000000', 0.4)
end

function onSongStart()
	doTweenAlpha('flashTween', 'flash', 0.5, 10, linear)
end