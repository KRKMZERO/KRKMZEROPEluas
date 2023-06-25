
--スピードを変えられます
Tweenspeed = 0.5

Tweenease = 'Sineoutin' --Sineoutin







i = 0
function goodNoteHit(id, noteData, noteType, isSustainNote)

    if not downscroll then

        if noteData == 0 then
            i = i + 1
            makeLuaSprite('player1'..i,'',x,y)
            makeGraphic('player1'..i, 110,100, 'C24B99')
            addLuaSprite('player1'..i)
            setProperty('player1'..i..'.alpha', 0.5)
            setObjectCamera('player1'..i, 'hud')

            setProperty('player1'..i..'.x', defaultPlayerStrumX0)

            setProperty('player1'..i..'.y', -100)
            doTweenY('player1Tween'..i, 'player1'..i, screenHeight, Tweenspeed, Tweenease)
        end

        if noteData == 1 then
            i = i + 1
            makeLuaSprite('player2'..i,'',x,y)
            makeGraphic('player2'..i, 110,100, '00FFFF')
            addLuaSprite('player2'..i)
            setProperty('player2'..i..'.alpha', 0.5)
            setObjectCamera('player2'..i, 'hud')

            setProperty('player2'..i..'.x', defaultPlayerStrumX1)

            setProperty('player2'..i..'.y', -100)
            doTweenY('player2Tween'..i, 'player2'..i, screenHeight, Tweenspeed, Tweenease)
        end

        if noteData == 2 then
            i = i + 1
            makeLuaSprite('player3'..i,'',x,y)
            makeGraphic('player3'..i, 110,100, '12FA05')
            addLuaSprite('player3'..i)
            setProperty('player3'..i..'.alpha', 0.5)
            setObjectCamera('player3'..i, 'hud')

            setProperty('player3'..i..'.x', defaultPlayerStrumX2)

            setProperty('player3'..i..'.y', -100)
            doTweenY('player3Tween'..i, 'player3'..i, screenHeight, Tweenspeed, Tweenease)
        end

        if noteData == 3 then
            i = i + 1
            makeLuaSprite('player4'..i,'',x,y)
            makeGraphic('player4'..i, 110,100, 'F9393F')
            addLuaSprite('player4'..i)
            setProperty('player4'..i..'.alpha', 0.5)
            setObjectCamera('player4'..i, 'hud')

            setProperty('player4'..i..'.x', defaultPlayerStrumX3)

            setProperty('player4'..i..'.y', -100)
            doTweenY('player4Tween'..i, 'player4'..i, screenHeight, Tweenspeed, Tweenease)
        end

    elseif downscroll then

        if noteData == 0 then
            i = i + 1
            makeLuaSprite('player1'..i,'',x,y)
            makeGraphic('player1'..i, 110,100, 'C24B99')
            addLuaSprite('player1'..i)
            setProperty('player1'..i..'.alpha', 0.5)
            setObjectCamera('player1'..i, 'hud')

            setProperty('player1'..i..'.x', defaultPlayerStrumX0)

            setProperty('player1'..i..'.y', screenHeight)
            doTweenY('player1Tween'..i, 'player1'..i, -100, Tweenspeed, Tweenease)
        end

        if noteData == 1 then
            i = i + 1
            makeLuaSprite('player2'..i,'',x,y)
            makeGraphic('player2'..i, 110,100, '00FFFF')
            addLuaSprite('player2'..i)
            setProperty('player2'..i..'.alpha', 0.5)
            setObjectCamera('player2'..i, 'hud')

            setProperty('player2'..i..'.x', defaultPlayerStrumX1)

            setProperty('player2'..i..'.y', screenHeight)
            doTweenY('player2Tween'..i, 'player2'..i, -100, Tweenspeed, Tweenease)
        end

        if noteData == 2 then
            i = i + 1
            makeLuaSprite('player3'..i,'',x,y)
            makeGraphic('player3'..i, 110,100, '12FA05')
            addLuaSprite('player3'..i)
            setProperty('player3'..i..'.alpha', 0.5)
            setObjectCamera('player3'..i, 'hud')

            setProperty('player3'..i..'.x', defaultPlayerStrumX2)

            setProperty('player3'..i..'.y', screenHeight)
            doTweenY('player3Tween'..i, 'player3'..i, -100, Tweenspeed, Tweenease)
        end

        if noteData == 3 then
            i = i + 1
            makeLuaSprite('player4'..i,'',x,y)
            makeGraphic('player4'..i, 110,100, 'F9393F')
            addLuaSprite('player4'..i)
            setProperty('player4'..i..'.alpha', 0.5)
            setObjectCamera('player4'..i, 'hud')

            setProperty('player4'..i..'.x', defaultPlayerStrumX3)

            setProperty('player4'..i..'.y', screenHeight)
            doTweenY('player4Tween'..i, 'player4'..i, -100, Tweenspeed, Tweenease)
        end

    end
end
        
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)

    if not downscroll then

        if noteData == 0 then
            i = i + 1
            makeLuaSprite('opponent1'..i,'',x,y)
	        makeGraphic('opponent1'..i, 110,100, 'C24B99')
            addLuaSprite('opponent1'..i)
            setProperty('opponent1'..i..'.alpha', 0.5)
            setObjectCamera('opponent1'..i, 'hud')

            setProperty('opponent1'..i..'.x', defaultOpponentStrumX0)

            setProperty('opponent1'..i..'.y', -100)
            doTweenY('opponent1Tween'..i,'opponent1'..i, screenHeight, Tweenspeed, Tweenease)
        end

        if noteData == 1 then
            i = i + 1
            makeLuaSprite('opponent2'..i,'',x,y)
            makeGraphic('opponent2'..i, 110,100, '00FFFF')
            addLuaSprite('opponent2'..i)
            setProperty('opponent2'..i..'.alpha', 0.5)
            setObjectCamera('opponent2'..i, 'hud')

            setProperty('opponent2'..i..'.x', defaultOpponentStrumX1)

            setProperty('opponent2'..i..'.y', -100)
            doTweenY('opponent2Tween'..i,'opponent2'..i, screenHeight, Tweenspeed, Tweenease)
        end

        if noteData == 2 then
            i = i + 1
            makeLuaSprite('opponent3'..i,'',x,y)
            makeGraphic('opponent3'..i, 110,100, '12FA05')
            addLuaSprite('opponent3'..i)
            setProperty('opponent3'..i..'.alpha', 0.5)
            setObjectCamera('opponent3'..i, 'hud')

            setProperty('opponent3'..i..'.x', defaultOpponentStrumX2)

            setProperty('opponent3'..i..'.y', -100)
            doTweenY('opponent3Tween'..i,'opponent3'..i, screenHeight, Tweenspeed, Tweenease)
        end

        if noteData == 3 then
            i = i + 1
            makeLuaSprite('opponent4'..i,'',x,y)
            makeGraphic('opponent4'..i, 110,100, 'F9393F')
            addLuaSprite('opponent4'..i)
            setProperty('opponent4'..i..'.alpha', 0.5)
            setObjectCamera('opponent4'..i, 'hud')

            setProperty('opponent4'..i..'.x', defaultOpponentStrumX3)

            setProperty('opponent4'..i..'.y', -100)
            doTweenY('opponent4Tween'..i,'opponent4'..i, screenHeight, Tweenspeed, Tweenease)
        end

    elseif downscroll then

        if noteData == 0 then
            i = i + 1
            makeLuaSprite('opponent1'..i,'',x,y)
	        makeGraphic('opponent1'..i, 110,100, 'C24B99')
            addLuaSprite('opponent1'..i)
            setProperty('opponent1'..i..'.alpha', 0.5)
            setObjectCamera('opponent1'..i, 'hud')

            setProperty('opponent1'..i..'.x', defaultOpponentStrumX0)

            setProperty('opponent1'..i..'.y', screenHeight)
            doTweenY('opponent1Tween'..i,'opponent1'..i, -100, Tweenspeed, Tweenease)
        end

        if noteData == 1 then
            i = i + 1
            makeLuaSprite('opponent2'..i,'',x,y)
            makeGraphic('opponent2'..i, 110,100, '00FFFF')
            addLuaSprite('opponent2'..i)
            setProperty('opponent2'..i..'.alpha', 0.5)
            setObjectCamera('opponent2'..i, 'hud')

            setProperty('opponent2'..i..'.x', defaultOpponentStrumX1)

            setProperty('opponent2'..i..'.y', screenHeight)
            doTweenY('opponent2Tween'..i,'opponent2'..i, -100, Tweenspeed, Tweenease)
        end

        if noteData == 2 then
            i = i + 1
            makeLuaSprite('opponent3'..i,'',x,y)
            makeGraphic('opponent3'..i, 110,100, '12FA05')
            addLuaSprite('opponent3'..i)
            setProperty('opponent3'..i..'.alpha', 0.5)
            setObjectCamera('opponent3'..i, 'hud')

            setProperty('opponent3'..i..'.x', defaultOpponentStrumX2)

            setProperty('opponent3'..i..'.y', screenHeight)
            doTweenY('opponent3Tween'..i,'opponent3'..i, -100, Tweenspeed, Tweenease)
        end

        if noteData == 3 then
            i = i + 1
            makeLuaSprite('opponent4'..i,'',x,y)
            makeGraphic('opponent4'..i, 110,100, 'F9393F')
            addLuaSprite('opponent4'..i)
            setProperty('opponent4'..i..'.alpha', 0.5)
            setObjectCamera('opponent4'..i, 'hud')

            setProperty('opponent4'..i..'.x', defaultOpponentStrumX3)

            setProperty('opponent4'..i..'.y', screenHeight)
            doTweenY('opponent4Tween'..i,'opponent4'..i, -100, Tweenspeed, Tweenease)
        end

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



function onUpdate(elapsed)
    --local currentBeat = (getSongPosition() / 1000)*(bpm/60)
    --Tweenspeed = crochet / 500
    --debugPrint(crochet / 500,' ',bpm)--crochet
end