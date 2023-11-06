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

    setPropertyFromClass('openfl.Lib','application.window.y',defaultYwindow + getProperty('fortween.y'))
    setPropertyFromClass('openfl.Lib','application.window.x',defaultXwindow + getProperty('fortween.x'))

end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if noteData == 0 then
        setProperty('fortween.x',getProperty('fortween.y')-15)
        doTweenX('X1','fortween',0,0.25,'linear')
    end
    if noteData == 1 then
        setProperty('fortween.y',getProperty('fortween.y')+15)
        doTweenY('Y1','fortween',0,0.25,'linear')
    end
    if noteData == 2 then
        setProperty('fortween.y',getProperty('fortween.y')-15)
        doTweenY('Y2','fortween',0,0.25,'linear')
    end
    if noteData == 3 then
        setProperty('fortween.x',getProperty('fortween.y')+15)
        doTweenX('X2','fortween',0,0.25,'linear')
    end
end

function onDestroy()
    setPropertyFromClass('openfl.Lib','application.window.x',defaultXwindow)
    setPropertyFromClass('openfl.Lib','application.window.y',defaultYwindow)
end

function onEndSong()
    setPropertyFromClass('openfl.Lib','application.window.x',defaultXwindow)
    setPropertyFromClass('openfl.Lib','application.window.y',defaultYwindow)
end