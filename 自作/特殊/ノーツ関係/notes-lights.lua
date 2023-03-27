function onCreate()
	makeLuaSprite('player1','',x,y)
    makeLuaSprite('player2','',x,y)
    makeLuaSprite('player3','',x,y)
    makeLuaSprite('player4','',x,y)

	makeGraphic('player1', 110,screenHeight+200, 'C24B99')
    makeGraphic('player2', 110,screenHeight+200, '00FFFF')
    makeGraphic('player3', 110,screenHeight+200, '12FA05')
    makeGraphic('player4', 110,screenHeight+200, 'F9393F')

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

	makeGraphic('opponent1', 110,screenHeight+200, 'C24B99')
    makeGraphic('opponent2', 110,screenHeight+200, '00FFFF')
    makeGraphic('opponent3', 110,screenHeight+200, '12FA05')
    makeGraphic('opponent4', 110,screenHeight+200, 'F9393F')

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
end



function goodNoteHit(id, noteData, noteType, isSustainNote)

    if noteData == 0 then
        setProperty('player1.alpha', 0.5)
        doTweenAlpha('player1Tween', 'player1', 0, 0.3, linear)
    end
    if noteData == 1 then
        setProperty('player2.alpha', 0.5)
        doTweenAlpha('player2Tween', 'player2', 0, 0.3, linear)
    end
    if noteData == 2 then
        setProperty('player3.alpha', 0.5)
        doTweenAlpha('player3Tween', 'player3', 0, 0.3, linear)
    end
    if noteData == 3 then
        setProperty('player4.alpha', 0.5)
        doTweenAlpha('player4Tween', 'player4', 0, 0.3, linear)
    end
        
end
        
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)

    if noteData == 0 then
        setProperty('opponent1.alpha', 0.5)
        doTweenAlpha('opponent1Tween','opponent1', 0, 0.3, linear)
    end
    if noteData == 1 then
        setProperty('opponent2.alpha', 0.5)
        doTweenAlpha('opponent2Tween','opponent2', 0, 0.3, linear)
    end
    if noteData == 2 then
        setProperty('opponent3.alpha', 0.5)
        doTweenAlpha('opponent3Tween','opponent3', 0, 0.3, linear)
    end
    if noteData == 3 then
        setProperty('opponent4.alpha', 0.5)
        doTweenAlpha('opponent4Tween','opponent4', 0, 0.3, linear)
    end
end