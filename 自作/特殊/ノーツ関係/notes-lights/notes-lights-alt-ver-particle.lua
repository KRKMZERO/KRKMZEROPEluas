local spritelimit = 100

function onCreate()
	makeLuaSprite('player1'..i,'',x,y)
    makeLuaSprite('player2'..i,'',x,y)
    makeLuaSprite('player3'..i,'',x,y)
    makeLuaSprite('player4'..i,'',x,y)

	makeGraphic('player1'..i, 110,100, 'C24B99')
    makeGraphic('player2'..i, 110,100, '00FFFF')
    makeGraphic('player3'..i, 110,100, '12FA05')
    makeGraphic('player4'..i, 110,100, 'F9393F')

	addLuaSprite('player1'..i)
    addLuaSprite('player2'..i)
    addLuaSprite('player3'..i)
    addLuaSprite('player4'..i)

	setProperty('player1'..i..'.alpha', 0.5)
    setProperty('player2'..i..'.alpha', 0.5)
    setProperty('player3'..i..'.alpha', 0.5)
    setProperty('player4'..i..'.alpha', 0.5)

	setObjectCamera('player1'..i, 'hud')
    setObjectCamera('player2'..i, 'hud')
    setObjectCamera('player3'..i, 'hud')
    setObjectCamera('player4'..i, 'hud')

    makeLuaSprite('opponent1'..i,'',x,y)
    makeLuaSprite('opponent2'..i,'',x,y)
    makeLuaSprite('opponent3'..i,'',x,y)
    makeLuaSprite('opponent4'..i,'',x,y)

	makeGraphic('opponent1'..i, 110,100, 'C24B99')
    makeGraphic('opponent2'..i, 110,100, '00FFFF')
    makeGraphic('opponent3'..i, 110,100, '12FA05')
    makeGraphic('opponent4'..i, 110,100, 'F9393F')

	addLuaSprite('opponent1'..i)
    addLuaSprite('opponent2'..i)
    addLuaSprite('opponent3'..i)
    addLuaSprite('opponent4'..i)

	setProperty('opponent1'..i..'.alpha', 0.5)
    setProperty('opponent2'..i..'.alpha', 0.5)
    setProperty('opponent3'..i..'.alpha', 0.5)
    setProperty('opponent4'..i..'.alpha', 0.5)

	setObjectCamera('opponent1'..i, 'hud')
    setObjectCamera('opponent2'..i, 'hud')
    setObjectCamera('opponent3'..i, 'hud')
    setObjectCamera('opponent4'..i, 'hud')
    if not downscroll then
        setProperty('player1'..i..'.y', -100)
        setProperty('player2'..i..'.y', -100)
        setProperty('player3'..i..'.y', -100)
        setProperty('player4'..i..'.y', -100)

        setProperty('opponent1'..i..'.y', -100)
        setProperty('opponent2'..i..'.y', -100)
        setProperty('opponent3'..i..'.y', -100)
        setProperty('opponent4'..i..'.y', -100)
    elseif downscroll then
        setProperty('player1'..i..'.y', screenHeight)
        setProperty('player2'..i..'.y', screenHeight)
        setProperty('player3'..i..'.y', screenHeight)
        setProperty('player4'..i..'.y', screenHeight)

        setProperty('opponent1'..i..'.y', screenHeight)
        setProperty('opponent2'..i..'.y', screenHeight)
        setProperty('opponent3'..i..'.y', screenHeight)
        setProperty('opponent4'..i..'.y', screenHeight)
    end


end
function onUpdate(elapsed)
    setProperty('player1'..i..'.x', defaultPlayerStrumX0)
    setProperty('player2'..i..'.x', defaultPlayerStrumX1)
    setProperty('player3'..i..'.x', defaultPlayerStrumX2)
    setProperty('player4'..i..'.x', defaultPlayerStrumX3)

    setProperty('opponent1'..i..'.x', defaultOpponentStrumX0)
    setProperty('opponent2'..i..'.x', defaultOpponentStrumX1)
    setProperty('opponent3'..i..'.x', defaultOpponentStrumX2)
    setProperty('opponent4'..i..'.x', defaultOpponentStrumX3)
end



function goodNoteHit(id, noteData, noteType, isSustainNote)

    if not downscroll then

        if noteData == 0 then
            setProperty('player1'..i..'.y', -100)
            doTweenY('player1Tween'..i, 'player1'..i, screenHeight, 0.3, linear)
        end

        if noteData == 1 then
            setProperty('player2'..i..'.y', -100)
            doTweenY('player2Tween'..i, 'player2'..i, screenHeight, 0.3, linear)
        end

        if noteData == 2 then
            setProperty('player3'..i..'.y', -100)
            doTweenY('player3Tween'..i, 'player3'..i, screenHeight, 0.3, linear)
        end

        if noteData == 3 then
            setProperty('player4'..i..'.y', -100)
            doTweenY('player4Tween'..i, 'player4'..i, screenHeight, 0.3, linear)
        end

    elseif downscroll then

        if noteData == 0 then
            setProperty('player1'..i..'.y', screenHeight)
            doTweenY('player1Tween'..i, 'player1'..i, -100, 0.3, linear)
        end

        if noteData == 1 then
            setProperty('player2'..i..'.y', screenHeight)
            doTweenY('player2Tween'..i, 'player2'..i, -100, 0.3, linear)
        end

        if noteData == 2 then
            setProperty('player3'..i..'.y', screenHeight)
            doTweenY('player3Tween'..i, 'player3'..i, -100, 0.3, linear)
        end

        if noteData == 3 then
            setProperty('player4'..i..'.y', screenHeight)
            doTweenY('player4Tween'..i, 'player4'..i, -100, 0.3, linear)
        end

    end
	PLAYERNOTE = PLAYERNOTE + 1
	if PLAYERNOTE == 100 then
		PLAYERNOTE = 0
	end
end
        
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)

    if not downscroll then

        if noteData == 0 then
            setProperty('opponent1'..i..'.y', -100)
            doTweenY('opponent1Tween'..i,'opponent1'..i, screenHeight, 0.3, linear)
        end

        if noteData == 1 then
            setProperty('opponent2'..i..'.y', -100)
            doTweenY('opponent2Tween'..i,'opponent2'..i, screenHeight, 0.3, linear)
        end

        if noteData == 2 then
            setProperty('opponent3'..i..'.y', -100)
            doTweenY('opponent3Tween'..i,'opponent3'..i, screenHeight, 0.3, linear)
        end

        if noteData == 3 then
            setProperty('opponent4'..i..'.y', -100)
            doTweenY('opponent4Tween'..i,'opponent4'..i, screenHeight, 0.3, linear)
        end

    elseif downscroll then

        if noteData == 0 then
            setProperty('opponent1'..i..'.y', screenHeight)
            doTweenY('opponent1Tween'..i,'opponent1'..i, -100, 0.3, linear)
        end

        if noteData == 1 then
            setProperty('opponent2'..i..'.y', screenHeight)
            doTweenY('opponent2Tween'..i,'opponent2'..i, -100, 0.3, linear)
        end

        if noteData == 2 then
            setProperty('opponent3'..i..'.y', screenHeight)
            doTweenY('opponent3Tween'..i,'opponent3'..i, -100, 0.3, linear)
        end

        if noteData == 3 then
            setProperty('opponent4'..i..'.y', screenHeight)
            doTweenY('opponent4Tween'..i,'opponent4'..i, -100, 0.3, linear)
        end

    end
	OPPONENTNOTE = OPPONENTNOTE + 1
	if OPPONENTNOTE == 100 then
		OPPONENTNOTE = 0
	end
end

function onTweenCompleted(tag)
    if tag == 'player1Tween'..i then
        removeLuaSprite('player1'..i,true)
    end
    if tag == 'player2Tween'..i then
        removeLuaSprite('player2'..i,true)
    end
    if tag == 'player3Tween'..i then
        removeLuaSprite('player3'..i,true)
    end
    if tag == 'player4Tween'..i then
        removeLuaSprite('player4'..i,true)
    end

    if tag == 'opponent1Tween'..i then
        removeLuaSprite('opponent1'..i,true)
    end
    if tag == 'opponent2Tween'..i then
        removeLuaSprite('opponent2'..i,true)
    end
    if tag == 'opponent3Tween'..i then
        removeLuaSprite('opponent3'..i,true)
    end
    if tag == 'opponent4Tween'..i then
        removeLuaSprite('opponent4'..i,true)
    end
end