function onCreate()
	setProperty('healthGain',0)
	setProperty('healthLoss',0)
end
--default
-- Gain + 0.023
-- Loss - 0.0475
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if getPropertyFromGroup("notes", membersIndex, "rating") == "sick" then
		setProperty('health', getProperty('health') + 0.023 );
		debugPrint('1')
	end
  	if getPropertyFromGroup("notes", membersIndex, "rating") == "good" then
		setProperty('health', getProperty('health') + 0.01725);
		debugPrint('2')
	end
	if getPropertyFromGroup("notes", membersIndex, "rating") == "bad" then
		setProperty('health', getProperty('health') + 0.0115);
		debugPrint('3')
	end
	if getPropertyFromGroup("notes", membersIndex, "rating") == "shit" then
		setProperty('health', getProperty('health') + 0.00575);
		debugPrint('4')
	end
	if isSustainNote then
		setProperty('health', getProperty('health') + 0.023 );
	end
end
function noteMiss(membersIndex, noteData, noteType, isSustainNote)
	setProperty('health', getProperty('health') - 0.023);
end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if getProperty('health') > 0.15 then
		setProperty('health', getProperty('health') - 0.0115 );
	end
end