function onCreate()
    makeLuaSprite("beat1", nil, 0, screenHeight)
    makeGraphic("beat1",160,360,'FFFFFF')
    addLuaSprite("beat1")
    setObjectCamera("beat1", "camHUD")

    makeLuaSprite("beat2", nil, 160*1, screenHeight)
    makeGraphic("beat2",160,360,'FFFFFF')
    addLuaSprite("beat2")
    setObjectCamera("beat2", "camHUD")

    makeLuaSprite("beat3", nil, 160*2, screenHeight)
    makeGraphic("beat3",160,360,'FFFFFF')
    addLuaSprite("beat3")
    setObjectCamera("beat3", "camHUD")

    makeLuaSprite("beat4", nil, 160*3, screenHeight)
    makeGraphic("beat4",160,360,'FFFFFF')
    addLuaSprite("beat4")
    setObjectCamera("beat4", "camHUD")

    makeLuaSprite("beat5", nil, 160*4, screenHeight)
    makeGraphic("beat5",160,360,'FFFFFF')
    addLuaSprite("beat5")
    setObjectCamera("beat5", "camHUD")

    makeLuaSprite("beat6", nil, 160*5, screenHeight)
    makeGraphic("beat6",160,360,'FFFFFF')
    addLuaSprite("beat6")
    setObjectCamera("beat6", "camHUD")

    makeLuaSprite("beat7", nil, 160*6, screenHeight)
    makeGraphic("beat7",160,360,'FFFFFF')
    addLuaSprite("beat7")
    setObjectCamera("beat7", "camHUD")

    makeLuaSprite("beat8", nil, 160*7, screenHeight)
    makeGraphic("beat8",160,360,'FFFFFF')
    addLuaSprite("beat8")
    setObjectCamera("beat8", "camHUD")

    for i = 1,8 do
        setBlendMode('beat'..i,'add')
        setProperty('beat'..i..'.alpha',0.5)
    end
end

local pattern = 1
local duration = 0.5
local ease = 'circInOut'

function onSongStart()
    setProperty('beat1.y',360)
    doTweenY('beat1TweenX', 'beat1', screenHeight, duration, ease)
end
function onBeatHit()
    if pattern == 2 then
        if curBeat < 5 then    
            if curBeat % 8 == 0 then
                setProperty('beat1.y',360)
                doTweenY('beat1TweenX', 'beat1', screenHeight, duration, ease)
            elseif curBeat % 8 == 1 then
                setProperty('beat2.y',360)
                doTweenY('beat2TweenX', 'beat2', screenHeight, duration, ease)
            elseif curBeat % 8 == 2 then
                setProperty('beat3.y',360)
                doTweenY('beat3TweenX', 'beat3', screenHeight, duration, ease)
            elseif curBeat % 8 == 3 then
                setProperty('beat4.y',360)
                doTweenY('beat4TweenX', 'beat4', screenHeight, duration, ease)
            elseif curBeat % 8 == 4 then
            --
            elseif curBeat % 8 == 5 then
            --
            elseif curBeat % 8 == 6 then
            --
            elseif curBeat % 8 == 7 then
            --
            end
        end
        if curBeat >= 4 then
            if curBeat % 4 == 0 then
                setProperty('beat1.y',360)
                doTweenY('beat1TweenX', 'beat1', screenHeight, duration, ease)

                setProperty('beat5.y',360)
                doTweenY('beat5TweenX', 'beat5', screenHeight, duration, ease)
            elseif curBeat % 4 == 1 then
                setProperty('beat2.y',360)
                doTweenY('beat2TweenX', 'beat2', screenHeight, duration, ease)

                setProperty('beat6.y',360)
                doTweenY('beat6TweenX', 'beat6', screenHeight, duration, ease)
            elseif curBeat % 4 == 2 then
                setProperty('beat3.y',360)
                doTweenY('beat3TweenX', 'beat3', screenHeight, duration, ease)

                setProperty('beat7.y',360)
                doTweenY('beat7TweenX', 'beat7', screenHeight, duration, ease)
            elseif curBeat % 4 == 3 then
                setProperty('beat4.y',360)
                doTweenY('beat4TweenX', 'beat4', screenHeight, duration, ease)

                setProperty('beat8.y',360)
                doTweenY('beat8TweenX', 'beat8', screenHeight, duration, ease)
            end
        end
    end
    if pattern == 1 then
        if curBeat % 8 == 0 then
            setProperty('beat1.y',360)
            doTweenY('beat1TweenX', 'beat1', screenHeight, duration, ease)
        elseif curBeat % 8 == 1 then
            setProperty('beat2.y',360)
            doTweenY('beat2TweenX', 'beat2', screenHeight, duration, ease)
        elseif curBeat % 8 == 2 then
            setProperty('beat3.y',360)
            doTweenY('beat3TweenX', 'beat3', screenHeight, duration, ease)
        elseif curBeat % 8 == 3 then
            setProperty('beat4.y',360)
            doTweenY('beat4TweenX', 'beat4', screenHeight, duration, ease)
        elseif curBeat % 8 == 4 then
            setProperty('beat5.y',360)
            doTweenY('beat5TweenX', 'beat5', screenHeight, duration, ease)
        elseif curBeat % 8 == 5 then
            setProperty('beat6.y',360)
            doTweenY('beat6TweenX', 'beat6', screenHeight, duration, ease)
        elseif curBeat % 8 == 6 then
            setProperty('beat7.y',360)
            doTweenY('beat7TweenX', 'beat7', screenHeight, duration, ease)
        elseif curBeat % 8 == 7 then
            setProperty('beat8.y',360)
            doTweenY('beat8TweenX', 'beat8', screenHeight, duration, ease)
        end
    end
end
