--JP
--こちらのluaは倍率minから倍率maxの間を
--ランダムにノーツスピードを切り替えます
--EN
--The lua here switches the note speed randomly 
--between a magnification of min and max.

local min = 0.75
local max = 1.25

function onCreatePost()
	for i = 0, getProperty("unspawnNotes.length")-1 do
		if not getPropertyFromGroup("unspawnNotes", i, "isSustainNote") then
			local speed = getRandomFloat(min, max)
			setPropertyFromGroup("unspawnNotes", i, "multSpeed", speed)
		else
			setPropertyFromGroup("unspawnNotes", i, "multSpeed", getPropertyFromGroup("unspawnNotes", i, "parent.multSpeed"))
		end
	end
end