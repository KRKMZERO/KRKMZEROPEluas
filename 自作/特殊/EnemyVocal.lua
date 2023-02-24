function opponentNoteHit()
    if getProperty('health') > 0.15 then
        setProperty('health', getProperty('health')- (getProperty('healthLoss')*0.05) );--ここの数字を調整しよう！
    end
end