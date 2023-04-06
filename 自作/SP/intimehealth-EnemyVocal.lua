--HPの量に応じて相手の削る量が変化します
function opponentNoteHit()
    if getProperty('health') > 0.15 then
        setProperty('health', getProperty('health')- (getProperty('health')*0.05) );--ここの数字を調整しよう！
    end
end