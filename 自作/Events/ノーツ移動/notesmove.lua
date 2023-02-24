function onEvent(name, value1, value2)
	if name == "notesmove" then
		--Event Setting 'cubeInOut'
		MOVES = 'linear'



		if value2 == "" then
			NoteMovespeed = 0.001
		else
			NoteMovespeed = tonumber(value2)
		end

		if value1 == '1' then
			noteTweenX('dNoteMove100', 4, defaultPlayerStrumX0 - 100, NoteMovespeed, linear)
			noteTweenX('dNoteMove101', 5, defaultPlayerStrumX1 - 100, NoteMovespeed, linear)
			noteTweenX('dNoteMove102', 6, defaultPlayerStrumX2 - 100, NoteMovespeed, linear)
			noteTweenX('dNoteMove103', 7, defaultPlayerStrumX3 - 100, NoteMovespeed, linear)

		elseif value1 == '2' then
			noteTweenX('dNoteMove200', 4, defaultPlayerStrumX0, NoteMovespeed, linear)
			noteTweenX('dNoteMove201', 5, defaultPlayerStrumX1, NoteMovespeed, linear)
			noteTweenX('dNoteMove202', 6, defaultPlayerStrumX2, NoteMovespeed, linear)
			noteTweenX('dNoteMove203', 7, defaultPlayerStrumX3, NoteMovespeed, linear)

		elseif value1 == '3' then
			noteTweenX('dNoteMove300', 4, defaultPlayerStrumX0 + 100, NoteMovespeed, Linear)
			noteTweenX('dNoteMove301', 5, defaultPlayerStrumX1 + 100, NoteMovespeed, Linear)
			noteTweenX('dNoteMove302', 6, defaultPlayerStrumX2 + 100, NoteMovespeed, Linear)
			noteTweenX('dNoteMove303', 7, defaultPlayerStrumX3 + 100, NoteMovespeed, Linear)

		end
	
		debugPrint("Tests ",tonumber(value1)," ",NoteMovespeed)
	end
end
--local var move = tonumber(value1)
--local var tp = tonumber(value2)

			--noteTweenX('dplay0', 4, 412, 0.5, 'quartInOut')
				--noteTweenX('dplay2', 5, 524, 0.5, 'quartInOut')
				--noteTweenX('dplay3', 6, 636, 0.5, 'quartInOut')
				--noteTweenX('dplay4', 7, 748, 0.5, 'quartInOut')

