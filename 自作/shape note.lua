local wait = false

function onBeatHit()

        if wait == false then
                if curBeat % 2 == 0 then
                        for i =0,7  do
                                noteTweenAngle('note'..i,i,-10,0.10,'linear')
                        end
                        if getRandomBool(2) == true then 
                                wait = true
                                for i =0,7  do
                                        noteTweenAngle('notea'..i,i,-360,0.20,'circOut')
                                end
                                runTimer('waittimer',0.201,1)
                        end
                elseif curBeat % 2 == 1 then
                        for i =0,7  do
                                noteTweenAngle('note'..i,i,10,0.10,'linear')
                        end
                        if getRandomBool(2) == true then 
                                wait = true
                                for i =0,7  do
                                        noteTweenAngle('notea'..i,i,360,0.20,'circOut')
                                end
                                runTimer('waittimer',0.201,1)
                        end
                end
        end
end
function onTimerCompleted(tag, loops, loopsLeft)
        if tag == 'waittimer' then
                wait = false
        end
end
function onTweenCompleted(tag)
        if tag == 'notea1' then
                for i =0,3  do
                        setPropertyFromGroup('opponentStrums',i,'angle',0)
                        setPropertyFromGroup('playerStrums',i,'angle',0)
                end
        end
end
