--PE 0.7.0以降は動作しません
function opponentNoteHit()
    if not keyPressed('space') then
        setProperty('health', getProperty('health')-0.023 *(getProperty('healthLoss')) );--ここの数字を調整しよう！
    end
end
