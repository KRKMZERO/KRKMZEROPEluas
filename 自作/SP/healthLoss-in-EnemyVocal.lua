--設定のhealthLossに応じて相手が歌った時の減少量が変動します
function opponentNoteHit()
    if getProperty('health') > 0.15 then
        setProperty('health', getProperty('health') -0.023 *(getProperty('healthLoss')) );--ここの数字を調整しよう！
    end
end