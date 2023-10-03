notecolor1 = 'C24B99'
notecolor2 = '00FFFF'
notecolor3 = '12FA05'
notecolor4 = 'F9393F'

local setSpHeight = 50

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

	setProperty('player1.alpha', 0.75)
    setProperty('player2.alpha', 0.75)
    setProperty('player3.alpha', 0.75)
    setProperty('player4.alpha', 0.75)

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

	setProperty('opponent1.alpha', 0.75)
    setProperty('opponent2.alpha', 0.75)
    setProperty('opponent3.alpha', 0.75)
    setProperty('opponent4.alpha', 0.75)

	setObjectCamera('opponent1', 'hud')
    setObjectCamera('opponent2', 'hud')
    setObjectCamera('opponent3', 'hud')
    setObjectCamera('opponent4', 'hud')
    if not downscroll then
        setProperty('player1.y', - setSpHeight)
        setProperty('player2.y', - setSpHeight)
        setProperty('player3.y', - setSpHeight)
        setProperty('player4.y', - setSpHeight)

        setProperty('opponent1.y', - setSpHeight)
        setProperty('opponent2.y', - setSpHeight)
        setProperty('opponent3.y', - setSpHeight)
        setProperty('opponent4.y', - setSpHeight)
    elseif downscroll then
        setProperty('player1.y', screenHeight)
        setProperty('player2.y', screenHeight)
        setProperty('player3.y', screenHeight)
        setProperty('player4.y', screenHeight)

        setProperty('opponent1.y', screenHeight)
        setProperty('opponent2.y', screenHeight)
        setProperty('opponent3.y', screenHeight)
        setProperty('opponent4.y', screenHeight)
    end


end



function goodNoteHit(id, noteData, noteType, isSustainNote)

    if not downscroll then

        if noteData == 0 then
            setProperty('player1.y', - setSpHeight)
            doTweenY('player1Tween', 'player1', screenHeight, 0.3, linear)
        end

        if noteData == 1 then
            setProperty('player2.y', - setSpHeight)
            doTweenY('player2Tween', 'player2', screenHeight, 0.3, linear)
        end

        if noteData == 2 then
            setProperty('player3.y', - setSpHeight)
            doTweenY('player3Tween', 'player3', screenHeight, 0.3, linear)
        end

        if noteData == 3 then
            setProperty('player4.y', - setSpHeight)
            doTweenY('player4Tween', 'player4', screenHeight, 0.3, linear)
        end

    elseif downscroll then

        if noteData == 0 then
            setProperty('player1.y', screenHeight)
            doTweenY('player1Tween', 'player1', - setSpHeight, 0.3, linear)
        end

        if noteData == 1 then
            setProperty('player2.y', screenHeight)
            doTweenY('player2Tween', 'player2', - setSpHeight, 0.3, linear)
        end

        if noteData == 2 then
            setProperty('player3.y', screenHeight)
            doTweenY('player3Tween', 'player3', - setSpHeight, 0.3, linear)
        end

        if noteData == 3 then
            setProperty('player4.y', screenHeight)
            doTweenY('player4Tween', 'player4', - setSpHeight, 0.3, linear)
        end

    end

end
        
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)

    if not downscroll then

        if noteData == 0 then
            setProperty('opponent1.y', - setSpHeight)
            doTweenY('opponent1Tween','opponent1', screenHeight, 0.3, linear)
        end

        if noteData == 1 then
            setProperty('opponent2.y', - setSpHeight)
            doTweenY('opponent2Tween','opponent2', screenHeight, 0.3, linear)
        end

        if noteData == 2 then
            setProperty('opponent3.y', - setSpHeight)
            doTweenY('opponent3Tween','opponent3', screenHeight, 0.3, linear)
        end

        if noteData == 3 then
            setProperty('opponent4.y', - setSpHeight)
            doTweenY('opponent4Tween','opponent4', screenHeight, 0.3, linear)
        end

    elseif downscroll then

        if noteData == 0 then
            setProperty('opponent1.y', screenHeight)
            doTweenY('opponent1Tween','opponent1', - setSpHeight, 0.3, linear)
        end

        if noteData == 1 then
            setProperty('opponent2.y', screenHeight)
            doTweenY('opponent2Tween','opponent2', - setSpHeight, 0.3, linear)
        end

        if noteData == 2 then
            setProperty('opponent3.y', screenHeight)
            doTweenY('opponent3Tween','opponent3', - setSpHeight, 0.3, linear)
        end

        if noteData == 3 then
            setProperty('opponent4.y', screenHeight)
            doTweenY('opponent4Tween','opponent4', - setSpHeight, 0.3, linear)
        end

    end

end