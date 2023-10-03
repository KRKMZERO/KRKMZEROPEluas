--動画取り上げ用コードです
--コード--
function onSongStart()
	runTimer('Recovery', 0.01, 0)
end
drain = false
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	drain = true
	if getProperty('health') >= 1 then
		if noteData == 0 then
			setProperty('health', getProperty('health') - 0.01);
		end
		if noteData == 1 then
			setProperty('health', getProperty('health') - 0.01);
		end
		if noteData == 2 then
			setProperty('health', getProperty('health') - 0.01);
		end
		if noteData == 3 then
			setProperty('health', getProperty('health') - 0.01);
		end
	end
end
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	drain = true
end
--[[
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'Recovery' and drain then
		setProperty('health', getProperty('health') - 0.005);
	end
end
]]
function onBeatHit()
	if drain then
		setProperty('health', getProperty('health') - 0.025);
	end
end