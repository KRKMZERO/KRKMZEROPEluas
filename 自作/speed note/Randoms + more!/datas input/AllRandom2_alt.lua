--JP
--こちらのluaは倍率0.8から倍率1.2の間を
--ランダムにノーツスピードを切り替えます
--EN
--The lua here switches the note speed randomly 
--between a magnification of 0.8 and 1.2.
local randomspeed ={
    '0.8',
    '0.9',
    '1.0',
    '1.1',
    '1.2',
}

function onUpdatePost(elapsed)
	setPropertyFromGroup("unspawnNotes", i, "multSpeed",randomspeed[getRandomInt(1, #randomspeed )])
end
