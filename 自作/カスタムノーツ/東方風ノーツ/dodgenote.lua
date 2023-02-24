function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'dodgenote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'dodgenote'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); --Make it so Dad doesn't do animation

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
			
			end
		end
	end
	--debugPrint('Script started!')
end

--もともとは500にしていたのですがHEALTH LOSS MULTIPLIER設定による軽減を可能にしました(反映されるかわからないけど)されませんでしたOTZ
--軽減状態だとdamage差分が動くように

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == "dodgenote" then
		setProperty('health', -2);
		characterPlayAnim('boyfriend', 'hit', true);
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == "dodgenote" then
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
	end
end