function opponentNoteHit()
    if getProperty('health') > 0.1 then
        setProperty('health', getProperty('health') - 0.015);--ここの数字を調整しよう！
    end
end