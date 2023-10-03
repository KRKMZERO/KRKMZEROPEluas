
function onCreatePost()
	for i = 0,3 do
	 setPropertyFromGroup("opponentStrums", i, "color",getColorFromHex('FF9731'))
	 setPropertyFromGroup("playerStrums", i, "color",getColorFromHex('477FCA'))
	end
end
--[[
function onBeatHit()
    if curBeat % 2 == 0 then
        for i = 0,3 do
            setPropertyFromGroup("opponentStrums", i, "color",getColorFromHex('FFFFFF'))
            setPropertyFromGroup("playerStrums", i, "color",getColorFromHex('000000'))
        end
    elseif curBeat % 2 == 1 then
        for i = 0,3 do
            setPropertyFromGroup("opponentStrums", i, "color",getColorFromHex('000000'))
            setPropertyFromGroup("playerStrums", i, "color",getColorFromHex('FFFFFF'))
        end
    end
end
]]