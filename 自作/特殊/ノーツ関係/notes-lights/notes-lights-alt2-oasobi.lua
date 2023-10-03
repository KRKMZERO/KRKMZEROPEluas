notecolor1 = 'C24B99'
notecolor2 = '00FFFF'
notecolor3 = '12FA05'
notecolor4 = 'F9393F'

local setSpHeight = 75

function onCreate()
	makeLuaSprite('player1','',x,y)
    makeLuaSprite('player2','',x,y)
    makeLuaSprite('player3','',x,y)
    makeLuaSprite('player4','',x,y)

	makeGraphic('player1', 110,setSpHeight, notecolor1)
    makeGraphic('player2', 110,setSpHeight, notecolor2)
    makeGraphic('player3', 110,setSpHeight, notecolor3)
    makeGraphic('player4', 110,setSpHeight, notecolor4)

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

    makeLuaSprite('opponent1','',x,y)
    makeLuaSprite('opponent2','',x,y)
    makeLuaSprite('opponent3','',x,y)
    makeLuaSprite('opponent4','',x,y)

	makeGraphic('opponent1', 110,setSpHeight, notecolor1)
    makeGraphic('opponent2', 110,setSpHeight, notecolor2)
    makeGraphic('opponent3', 110,setSpHeight, notecolor3)
    makeGraphic('opponent4', 110,setSpHeight, notecolor4)

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
    --お遊び
    makeLuaSprite('player1-alt','',x,y)
    makeLuaSprite('player2-alt','',x,y)
    makeLuaSprite('player3-alt','',x,y)
    makeLuaSprite('player4-alt','',x,y)

	makeGraphic('player1-alt', 110,setSpHeight, notecolor1)
    makeGraphic('player2-alt', 110,setSpHeight, notecolor2)
    makeGraphic('player3-alt', 110,setSpHeight, notecolor3)
    makeGraphic('player4-alt', 110,setSpHeight, notecolor4)

	addLuaSprite('player1-alt')
    addLuaSprite('player2-alt')
    addLuaSprite('player3-alt')
    addLuaSprite('player4-alt')

	setProperty('player1-alt.alpha', 0.0)
    setProperty('player2-alt.alpha', 0.0)
    setProperty('player3-alt.alpha', 0.0)
    setProperty('player4-alt.alpha', 0.0)

	setObjectCamera('player1-alt', 'hud')
    setObjectCamera('player2-alt', 'hud')
    setObjectCamera('player3-alt', 'hud')
    setObjectCamera('player4-alt', 'hud')

    makeLuaSprite('opponent1-alt','',x,y)
    makeLuaSprite('opponent2-alt','',x,y)
    makeLuaSprite('opponent3-alt','',x,y)
    makeLuaSprite('opponent4-alt','',x,y)

	makeGraphic('opponent1-alt', 110,setSpHeight, notecolor1)
    makeGraphic('opponent2-alt', 110,setSpHeight, notecolor2)
    makeGraphic('opponent3-alt', 110,setSpHeight, notecolor3)
    makeGraphic('opponent4-alt', 110,setSpHeight, notecolor4)

	addLuaSprite('opponent1-alt')
    addLuaSprite('opponent2-alt')
    addLuaSprite('opponent3-alt')
    addLuaSprite('opponent4-alt')

	setProperty('opponent1-alt.alpha', 0.0)
    setProperty('opponent2-alt.alpha', 0.0)
    setProperty('opponent3-alt.alpha', 0.0)
    setProperty('opponent4-alt.alpha', 0.0)

	setObjectCamera('opponent1-alt', 'hud')
    setObjectCamera('opponent2-alt', 'hud')
    setObjectCamera('opponent3-alt', 'hud')
    setObjectCamera('opponent4-alt', 'hud')
    --
        setProperty('player1.y', 0)
        setProperty('player2.y', 0)
        setProperty('player3.y', 0)
        setProperty('player4.y', 0)

        setProperty('opponent1.y', 0)
        setProperty('opponent2.y', 0)
        setProperty('opponent3.y', 0)
        setProperty('opponent4.y', 0)

        setProperty('player1-alt.y', screenHeight - setSpHeight)
        setProperty('player2-alt.y', screenHeight - setSpHeight)
        setProperty('player3-alt.y', screenHeight - setSpHeight)
        setProperty('player4-alt.y', screenHeight - setSpHeight)

        setProperty('opponent1-alt.y', screenHeight - setSpHeight)
        setProperty('opponent2-alt.y', screenHeight - setSpHeight)
        setProperty('opponent3-alt.y', screenHeight - setSpHeight)
        setProperty('opponent4-alt.y', screenHeight - setSpHeight)

end
function onUpdate(elapsed)
    setProperty('player1.x', defaultPlayerStrumX0)
    setProperty('player2.x', defaultPlayerStrumX1)
    setProperty('player3.x', defaultPlayerStrumX2)
    setProperty('player4.x', defaultPlayerStrumX3)

    setProperty('opponent1.x', defaultOpponentStrumX0)
    setProperty('opponent2.x', defaultOpponentStrumX1)
    setProperty('opponent3.x', defaultOpponentStrumX2)
    setProperty('opponent4.x', defaultOpponentStrumX3)

    setProperty('player1-alt.x', defaultPlayerStrumX0)
    setProperty('player2-alt.x', defaultPlayerStrumX1)
    setProperty('player3-alt.x', defaultPlayerStrumX2)
    setProperty('player4-alt.x', defaultPlayerStrumX3)

    setProperty('opponent1-alt.x', defaultOpponentStrumX0)
    setProperty('opponent2-alt.x', defaultOpponentStrumX1)
    setProperty('opponent3-alt.x', defaultOpponentStrumX2)
    setProperty('opponent4-alt.x', defaultOpponentStrumX3)
end



function goodNoteHit(id, noteData, noteType, isSustainNote)

        if noteData == 0 then
            setProperty('player1.y', 0)
            doTweenY('player1Tween', 'player1', screenHeight - setSpHeight , 0.3, linear)

            setProperty('player1-alt.y', screenHeight - setSpHeight)
            doTweenY('player1-altTween', 'player1-alt', 0, 0.3, linear)

            setProperty('player1.alpha', 0.75)
            doTweenAlpha('player1aTween', 'player1', 0, 0.3, linear)

            setProperty('player1-alt.alpha', 0.75)
            doTweenAlpha('player1-altaTween', 'player1-alt', 0, 0.3, linear)
        end

        if noteData == 1 then
            setProperty('player2.y', 0)
            doTweenY('player2Tween', 'player2', screenHeight - setSpHeight, 0.3, linear)

            setProperty('player2-alt.y', screenHeight - setSpHeight)
            doTweenY('player2-altTween', 'player2-alt', 0, 0.3, linear)

            setProperty('player2.alpha', 0.75)
            doTweenAlpha('player2aTween', 'player2', 0, 0.3, linear)

            setProperty('player2-alt.alpha', 0.75)
            doTweenAlpha('player2-altaTween', 'player2-alt', 0, 0.3, linear)
        end

        if noteData == 2 then
            setProperty('player3.y', 0)
            doTweenY('player3Tween', 'player3', screenHeight - setSpHeight, 0.3, linear)

            setProperty('player3-alt.y', screenHeight - setSpHeight)
            doTweenY('player3-altTween', 'player3-alt', 0, 0.3, linear)

            setProperty('player3.alpha', 0.75)
            doTweenAlpha('player3aTween', 'player3', 0, 0.3, linear)

            setProperty('player3-alt.alpha', 0.75)
            doTweenAlpha('player3-altaTween', 'player3-alt', 0, 0.3, linear)
        end

        if noteData == 3 then
            setProperty('player4.y', 0)
            doTweenY('player4Tween', 'player4', screenHeight - setSpHeight, 0.3, linear)

            setProperty('player4-alt.y', screenHeight - setSpHeight)
            doTweenY('player4-altTween', 'player4-alt', 0, 0.3, linear)

            setProperty('player4.alpha', 0.75)
            doTweenAlpha('player4aTween', 'player4', 0, 0.3, linear)

            setProperty('player4-alt.alpha', 0.75)
            doTweenAlpha('player4-altaTween', 'player4-alt', 0, 0.3, linear)
        end

end
        
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)

        if noteData == 0 then
            setProperty('opponent1.y', 0)
            doTweenY('opponent1Tween','opponent1', screenHeight - setSpHeight, 0.3, linear)

            setProperty('opponent1.alpha', 0.75)
            doTweenAlpha('opponent1aTween','opponent1', 0, 0.3, linear)
            --
            setProperty('opponent1-alt.y', screenHeight - setSpHeight)
            doTweenY('opponent1-altTween','opponent1-alt', 0, 0.3, linear)

            setProperty('opponent1-alt.alpha', 0.75)
            doTweenAlpha('opponent1-altaTween','opponent1-alt', 0, 0.3, linear)
        end

        if noteData == 1 then
            setProperty('opponent2.y', 0)
            doTweenY('opponent2Tween','opponent2', screenHeight - setSpHeight, 0.3, linear)

            setProperty('opponent2.alpha', 0.75)
            doTweenAlpha('opponent2aTween','opponent2', 0, 0.3, linear)
            --
            setProperty('opponent2-alt.y', screenHeight - setSpHeight)
            doTweenY('opponent2-altTween','opponent2-alt', 0, 0.3, linear)

            setProperty('opponent2-alt.alpha', 0.75)
            doTweenAlpha('opponent2-altaTween','opponent2-alt', 0, 0.3, linear)
        end

        if noteData == 2 then
            setProperty('opponent3.y', 0)
            doTweenY('opponent3Tween','opponent3', screenHeight - setSpHeight, 0.3, linear)

            setProperty('opponent3.alpha', 0.75)
            doTweenAlpha('opponent3aTween','opponent3', 0, 0.3, linear)
            --
            setProperty('opponent3-alt.y', screenHeight - setSpHeight)
            doTweenY('opponent3-altTween','opponent3-alt', 0, 0.3, linear)

            setProperty('opponent3-alt.alpha', 0.75)
            doTweenAlpha('opponent3-altaTween','opponent3-alt', 0, 0.3, linear)
        end

        if noteData == 3 then
            setProperty('opponent4.y', 0)
            doTweenY('opponent4Tween','opponent4', screenHeight - setSpHeight, 0.3, linear)

            setProperty('opponent4.alpha', 0.75)
            doTweenAlpha('opponent4aTween','opponent4', 0, 0.3, linear)
            --
            setProperty('opponent4-alt.y', screenHeight - setSpHeight)
            doTweenY('opponent4-altTween','opponent4-alt', 0, 0.3, linear)

            setProperty('opponent4-alt.alpha', 0.75)
            doTweenAlpha('opponent4-altaTween','opponent4-alt', 0, 0.3, linear)
        end

end