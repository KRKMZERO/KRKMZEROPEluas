--JP
--こちらのluaは倍率0.5から倍率1.5の間を
--ランダムにノーツスピードを切り替えます
--EN
--The lua here switches the note speed randomly 
--between a magnification of 0.5 and 1.5.
local randomspeed ={
    '0.5',
    '0.6',
    '0.7',
    '0.8',
    '0.9',
    '1.0',
    '1.1',
    '1.2',
    '1.3',
    '1.4',
    '1.5',
}

function onUpdatePost(elapsed)
	setPropertyFromGroup("unspawnNotes", i, "multSpeed",randomspeed[getRandomInt(1, #randomspeed )])
end
