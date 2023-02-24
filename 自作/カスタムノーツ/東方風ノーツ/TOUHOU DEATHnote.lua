function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'TOUHOU DEATHnote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'TOUHOU DEATHnote'); --Change texture
                        setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); --Make it so Dad doesn't do animation
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', -(getProperty('healthLoss')*0.40)); --Default value is: 0.023, health gained on hit
			--setPropertyFromGroup('unspawnNotes', i, 'hitHealth', -2); --Default value is: 0.023, health gained on hit
			--setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
			--setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
end

