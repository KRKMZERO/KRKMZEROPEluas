
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if noteData == 0 then
        setPropertyFromGroup('playerStrums', 0, 'y', defaultPlayerStrumY0 + 30)
        setPropertyFromGroup('playerStrums', 0, 'angle', getRandomFloat(-30,-15))
        noteTweenY('MCTweenY0', 4, defaultPlayerStrumY0, (crochet / 750),'quartOut')
        noteTweenAngle('MCTweenA0', 4, 0, (crochet / 750),'quartOut')
    end
    if noteData == 1 then
        setPropertyFromGroup('playerStrums', 1, 'y', defaultPlayerStrumY1 + 30)
        setPropertyFromGroup('playerStrums', 1, 'angle', getRandomFloat(-15,0))
        noteTweenY('MCTweenY1', 5, defaultPlayerStrumY1, (crochet / 750),'quartOut')
        noteTweenAngle('MCTweenA1', 5, 0, (crochet / 750),'quartOut')
    end
    if noteData == 2 then
        setPropertyFromGroup('playerStrums', 2, 'y', defaultPlayerStrumY2 + 30)
        setPropertyFromGroup('playerStrums', 2, 'angle', getRandomFloat(0,15))
        noteTweenY('MCTweenY2', 6, defaultPlayerStrumY2, (crochet / 750),'quartOut')
        noteTweenAngle('MCTweenA2', 6, 0, (crochet / 750),'quartOut')
    end
    if noteData == 3 then
        setPropertyFromGroup('playerStrums', 3, 'y', defaultPlayerStrumY3 + 30)
        setPropertyFromGroup('playerStrums', 3, 'angle', getRandomFloat(15,30))
        noteTweenY('MCTweenY3', 7, defaultPlayerStrumY3, (crochet / 750),'quartOut')
        noteTweenAngle('MCTweenA3', 7, 0, (crochet / 750),'quartOut')
    end
end
