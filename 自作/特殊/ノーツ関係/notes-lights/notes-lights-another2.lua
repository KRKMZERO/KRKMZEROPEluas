notecolor1 = 'C24B99'
notecolor2 = '00FFFF'
notecolor3 = '12FA05'
notecolor4 = 'F9393F'

local setSpHeight = 75

function onCreate()
	makeLuaSprite('player1','',0,y)
    makeLuaSprite('player2','',320,y)
    makeLuaSprite('player3','',320 + 320,y)
    makeLuaSprite('player4','',320 + 320 + 320,y)

	makeGraphic('player1', 320,setSpHeight, notecolor1)
    makeGraphic('player2', 320,setSpHeight, notecolor2)
    makeGraphic('player3', 320,setSpHeight, notecolor3)
    makeGraphic('player4', 320,setSpHeight, notecolor4)

	addLuaSprite('player1')
    addLuaSprite('player2')
    addLuaSprite('player3')
    addLuaSprite('player4')

	setProperty('player1.alpha', 0.0)
    setProperty('player2.alpha', 0.0)
    setProperty('player3.alpha', 0.0)
    setProperty('player4.alpha', 0.0)

	setObjectCamera('player1', 'hud')
    setObjectCamera('player2', 'hud')
    setObjectCamera('player3', 'hud')
    setObjectCamera('player4', 'hud')

    makeLuaSprite('opponent1','',0,y)
    makeLuaSprite('opponent2','',320,y)
    makeLuaSprite('opponent3','',320 + 320,y)
    makeLuaSprite('opponent4','',320 + 320 + 320,y)

	makeGraphic('opponent1', 320,setSpHeight, notecolor1)
    makeGraphic('opponent2', 320,setSpHeight, notecolor2)
    makeGraphic('opponent3', 320,setSpHeight, notecolor3)
    makeGraphic('opponent4', 320,setSpHeight, notecolor4)

	addLuaSprite('opponent1')
    addLuaSprite('opponent2')
    addLuaSprite('opponent3')
    addLuaSprite('opponent4')

	setProperty('opponent1.alpha', 0.0)
    setProperty('opponent2.alpha', 0.0)
    setProperty('opponent3.alpha', 0.0)
    setProperty('opponent4.alpha', 0.0)

	setObjectCamera('opponent1', 'hud')
    setObjectCamera('opponent2', 'hud')
    setObjectCamera('opponent3', 'hud')
    setObjectCamera('opponent4', 'hud')
    if not downscroll then
        setProperty('player1.y', 0)
        setProperty('player2.y', 0)
        setProperty('player3.y', 0)
        setProperty('player4.y', 0)

        setProperty('opponent1.y', 0)
        setProperty('opponent2.y', 0)
        setProperty('opponent3.y', 0)
        setProperty('opponent4.y', 0)
    elseif downscroll then
        setProperty('player1.y', screenHeight - setSpHeight)
        setProperty('player2.y', screenHeight - setSpHeight)
        setProperty('player3.y', screenHeight - setSpHeight)
        setProperty('player4.y', screenHeight - setSpHeight)

        setProperty('opponent1.y', screenHeight - setSpHeight)
        setProperty('opponent2.y', screenHeight - setSpHeight)
        setProperty('opponent3.y', screenHeight - setSpHeight)
        setProperty('opponent4.y', screenHeight - setSpHeight)
    end


end



function goodNoteHit(id, noteData, noteType, isSustainNote)

    if not downscroll then

        if noteData == 0 then
            setProperty('player1.y', 0)
            doTweenY('player1Tween', 'player1', screenHeight - setSpHeight, 0.3, linear)
        end

        if noteData == 1 then
            setProperty('player2.y', 0)
            doTweenY('player2Tween', 'player2', screenHeight - setSpHeight, 0.3, linear)
        end

        if noteData == 2 then
            setProperty('player3.y', 0)
            doTweenY('player3Tween', 'player3', screenHeight - setSpHeight, 0.3, linear)
        end

        if noteData == 3 then
            setProperty('player4.y', 0)
            doTweenY('player4Tween', 'player4', screenHeight - setSpHeight, 0.3, linear)
        end

    elseif downscroll then

        if noteData == 0 then
            setProperty('player1.y', screenHeight - setSpHeight)
            doTweenY('player1Tween', 'player1', 0, 0.3, linear)
        end

        if noteData == 1 then
            setProperty('player2.y', screenHeight - setSpHeight)
            doTweenY('player2Tween', 'player2', 0, 0.3, linear)
        end

        if noteData == 2 then
            setProperty('player3.y', screenHeight - setSpHeight)
            doTweenY('player3Tween', 'player3', 0, 0.3, linear)
        end

        if noteData == 3 then
            setProperty('player4.y', screenHeight - setSpHeight)
            doTweenY('player4Tween', 'player4', 0, 0.3, linear)
        end

    end

    if noteData == 0 then
        setProperty('player1.alpha', 0.75)
        doTweenAlpha('player1aTween', 'player1', 0, 0.3, linear)
    end
    if noteData == 1 then
        setProperty('player2.alpha', 0.75)
        doTweenAlpha('player2aTween', 'player2', 0, 0.3, linear)
    end
    if noteData == 2 then
        setProperty('player3.alpha', 0.75)
        doTweenAlpha('player3aTween', 'player3', 0, 0.3, linear)
    end
    if noteData == 3 then
        setProperty('player4.alpha', 0.75)
        doTweenAlpha('player4aTween', 'player4', 0, 0.3, linear)
    end

end
        
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)

    if not downscroll then

        if noteData == 0 then
            setProperty('opponent1.y', 0)
            doTweenY('opponent1Tween','opponent1', screenHeight - setSpHeight, 0.3, linear)
        end

        if noteData == 1 then
            setProperty('opponent2.y', 0)
            doTweenY('opponent2Tween','opponent2', screenHeight - setSpHeight, 0.3, linear)
        end

        if noteData == 2 then
            setProperty('opponent3.y', 0)
            doTweenY('opponent3Tween','opponent3', screenHeight - setSpHeight, 0.3, linear)
        end

        if noteData == 3 then
            setProperty('opponent4.y', 0)
            doTweenY('opponent4Tween','opponent4', screenHeight - setSpHeight, 0.3, linear)
        end

    elseif downscroll then

        if noteData == 0 then
            setProperty('opponent1.y', screenHeight - setSpHeight)
            doTweenY('opponent1Tween','opponent1', 0, 0.3, linear)
        end

        if noteData == 1 then
            setProperty('opponent2.y', screenHeight - setSpHeight)
            doTweenY('opponent2Tween','opponent2', 0, 0.3, linear)
        end

        if noteData == 2 then
            setProperty('opponent3.y', screenHeight - setSpHeight)
            doTweenY('opponent3Tween','opponent3', 0, 0.3, linear)
        end

        if noteData == 3 then
            setProperty('opponent4.y', screenHeight - setSpHeight)
            doTweenY('opponent4Tween','opponent4', 0, 0.3, linear)
        end

    end

    if noteData == 0 then
        setProperty('opponent1.alpha', 0.75)
        doTweenAlpha('opponent1aTween','opponent1', 0, 0.3, linear)
    end
    if noteData == 1 then
        setProperty('opponent2.alpha', 0.75)
        doTweenAlpha('opponent2aTween','opponent2', 0, 0.3, linear)
    end
    if noteData == 2 then
        setProperty('opponent3.alpha', 0.75)
        doTweenAlpha('opponent3aTween','opponent3', 0, 0.3, linear)
    end
    if noteData == 3 then
        setProperty('opponent4.alpha', 0.75)
        doTweenAlpha('opponent4aTween','opponent4', 0, 0.3, linear)
    end

end