
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)

	if getProperty('combo') >= 10 then
		if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
			addScore(20)
			--debugPrint("sicks判定")
		else
			addScore(10)
			--debugPrint("sicks以外")
		end
	end
	if getProperty('combo') >= 50 then
		if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
			addScore(20)
		else
			addScore(10)
		end
	end
	if getProperty('combo') >= 100 then
		if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
			addScore(20)
		else
			addScore(10)
		end
	end
	if getProperty('combo') >= 150 then
		if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
			addScore(20)
		else
			addScore(10)
		end
	end
	if getProperty('combo') >= 200 then
		if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
			addScore(20)
		else
			addScore(10)
		end
	end
	if getProperty('combo') >= 250 then
		if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
			addScore(20)
		else
			addScore(10)
		end
	end
	if getProperty('combo') >= 300 then
		if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
			addScore(20)
		else
			addScore(10)
		end
	end
	if getProperty('combo') >= 350 then
		if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
			addScore(20)
		else
			addScore(10)
		end
	end
	if getProperty('combo') >= 400 then
		if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
			addScore(20)
		else
			addScore(10)
		end
	end
end