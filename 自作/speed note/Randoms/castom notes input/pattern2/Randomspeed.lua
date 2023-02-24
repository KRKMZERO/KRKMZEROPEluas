function onUpdatePost(elapsed)

	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Randomspeed' then
			setPropertyFromGroup("unspawnNotes", i, "multSpeed", math.random(80,120)/100)
		end
	end

end
--[[
function onCreate() --高速ノーツ
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Randomspeed' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets'); --テクスチャーの変更
			setPropertyFromGroup("unspawnNotes", i, "noAnimation", false)
			setPropertyFromGroup("unspawnNotes", i, "multSpeed", math.random(0.5, 1.5))
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', 0.023); --デフォルトの数値は0.023です
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0.0475); --デフォルトの数値は0.0475です

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --お父さん・相手のメモを無視させない
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --ミスにはペナルティーがある
			end
		end
	end
end

function onUpdatePost(elapsed)
	setPropertyFromGroup("unspawnNotes", i, "multSpeed", math.random(0.5, 1.5))
end
]]--