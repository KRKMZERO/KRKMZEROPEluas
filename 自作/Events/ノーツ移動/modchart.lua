function onEvent(name, value1, value2)
	if name == "modchart" then

		if value2 == "" then
			NoteMovespeed = 0.001
		else
			NoteMovespeed = tonumber(value2)
		end

		if value1 == '' then
			noteTweenX('defaultNoteMove0', 4, defaultPlayerStrumX0, NoteMovespeed, linear)--'QuintIn'
			noteTweenX('defaultNoteMove1', 5, defaultPlayerStrumX1, NoteMovespeed, linear)
			noteTweenX('defaultNoteMove2', 6, defaultPlayerStrumX2, NoteMovespeed, linear)
			noteTweenX('defaultNoteMove3', 7, defaultPlayerStrumX3, NoteMovespeed, linear)

		else
			local Notemodchart = 0 + tonumber(value1)
			--これで+も-もしたい			

			noteTweenX('modchartNoteMove0', 4, defaultPlayerStrumX0 + Notemodchart, NoteMovespeed, linear)
			noteTweenX('modchartNoteMove1', 5, defaultPlayerStrumX1 + Notemodchart, NoteMovespeed, linear)
			noteTweenX('modchartNoteMove2', 6, defaultPlayerStrumX2 + Notemodchart, NoteMovespeed, linear)
			noteTweenX('modchartNoteMove3', 7, defaultPlayerStrumX3 + Notemodchart, NoteMovespeed, linear)
		end
	
		--debugPrint("Tests ",tonumber(value1)," ",NoteMovespeed)
	end
end

