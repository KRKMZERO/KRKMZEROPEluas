function onCreate()
    makeLuaSprite('fortween','', 0, 0);
    makeGraphic('fortween',1,1,'000000')
    addLuaSprite('fortween')
    setObjectCamera('fortween','hud')
    setProperty("fortween.alpha", 0)

    defaultXwindow = getPropertyFromClass('openfl.Lib','application.window.x')
    defaultYwindow = getPropertyFromClass('openfl.Lib','application.window.y')
end

function onUpdate(elapsed)
    --setProperty("camHUD.angle", math.sin(getSongPosition()/1000) * 4)
    --setProperty("camGame.angle", math.sin(getSongPosition()/1000) * 2)

    --setPropertyFromClass('openfl.Lib','application.window.x',defaultXwindow - 2 + (math.sin(getSongPosition()/1000) * 2))
    --setPropertyFromClass('openfl.Lib','application.window.y',defaultYwindow + 20 + (math.sin(getSongPosition()/1000) * 50))

    --setPropertyFromClass('openfl.Lib','application.window.x',defaultXwindow + getRandomInt(-1,1))
    --setPropertyFromClass('openfl.Lib','application.window.y',defaultYwindow + getRandomInt(-1,1))

    setPropertyFromClass('openfl.Lib','application.window.y',defaultYwindow + getProperty('fortween.x'))

end
function onBeatHit()
    setProperty('fortween.x',0)
    doTweenX('Tween','fortween',15,0.5,'circin')
end

function onDestroy()
    setPropertyFromClass('openfl.Lib','application.window.x',defaultXwindow)
    setPropertyFromClass('openfl.Lib','application.window.y',defaultYwindow)
end

function onEndSong()
    setPropertyFromClass('openfl.Lib','application.window.x',defaultXwindow)
    setPropertyFromClass('openfl.Lib','application.window.y',defaultYwindow)
end