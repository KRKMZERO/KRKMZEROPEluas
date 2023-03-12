-- ノーツタイプスクリプトとして作成します
-- ノーツタイプは「camera」であると仮定しない

function onCreate()
    -- 初期化処理
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    -- プレイヤーが正しくノーツを押したときの処理
    if mustHitSection then -- mustHitSectionがtrueなら
        local x = getMidpointX('boyfriend') - 100 - getProperty('boyfriend.cameraPosition[0]') + getProperty('boyfriendCameraOffset[0]') -- ボーイフレンドのX座標を取得
        local y = getMidpointY('boyfriend') - 100 + getProperty('boyfriend.cameraPosition[1]') + getProperty('boyfriendCameraOffset[1]') -- ボーイフレンドのY座標を取得
        local offset = 50 -- 動かす距離を指定（適宜調整）
        if direction == 0 then -- 左向きなら
            x = x - offset -- X座標を減らす
        elseif direction == 1 then -- 下向きなら
            y = y + offset -- Y座標を増やす
        elseif direction == 2 then -- 上向きなら
            y = y - offset -- Y座標を減らす
        elseif direction == 3 then -- 右向きなら
            x = x + offset -- X座標を増やす
        end 
        triggerEvent('Camera Follow Pos', x, y) -- カメラをボーイフレンドの位置に移動させる（少しズレる）
    end 
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    -- 相手が正しくノーツを押したときの処理（同じ）
    if not mustHitSection then -- mustHitSectionがfalseなら 
        local x = getMidpointX('dad') + 150 + getProperty('dad.cameraPosition[0]') + getProperty('opponentCameraOffset[0]')-- ダッドのX座標を取得 
        local y = getMidpointY('dad') - 100 + getProperty('dad.cameraPosition[1]') + getProperty('opponentCameraOffset[1]')-- ダッドのY座標を取得 
        local offset = 50 
        if direction == 0 then 
            x = x - offset 
        elseif direction == 1 then 
            y = y + offset 
        elseif direction == 2 then 
            y = y - offset 
        elseif direction == 3 then 
            x = x + offset 
        end 
        triggerEvent('Camera Follow Pos', x, y) -- カメラをダッドの位置に移動させる（少しズレる）
    end  
end

function stepHit(step)
    -- ステップごとに呼ばれる処理（必要なければ省略可）
end

function onUpdate(elapsed)
    if mustHitSection then
        if getProperty('boyfriend.animation.curAnim.name') == 'idle' then -- アニメーションがidleなら
           triggerEvent('Camera Follow Pos', '', '')-- カメラ移動
        end
    else
        if getProperty('dad.animation.curAnim.name') == 'idle' then -- アニメーションがidleなら
            triggerEvent('Camera Follow Pos', '', '')-- カメラ移動
        end
    end
end