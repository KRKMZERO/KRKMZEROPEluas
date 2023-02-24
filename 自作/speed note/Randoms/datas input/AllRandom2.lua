--JP
--こちらのluaは倍率0.8から倍率1.2の間を
--ランダムにノーツスピードを切り替えます
--EN
--The lua here switches the note speed randomly 
--between a magnification of 0.8 and 1.2.

function onUpdatePost(elapsed)
	setPropertyFromGroup("unspawnNotes", i, "multSpeed", math.random(80,120)/100)
end
--[[

function onStepHit()
	setPropertyFromGroup("unspawnNotes", i, "multSpeed", getRandomInt(0.5, 1.5))
	--setPropertyFromGroup("unspawnNotes", i, "multSpeed", math.random(0.5, 0.6, 0.7, 0.8 ,0.9 ,1.0 ,1.1 , 1.2, 1.3, 1.4, 1.5))
end
--]]