function onEvent(name, value1, value2)
	if name == "EnemyVocalEvent" then

		if tonumber(value1) == 0 then
			EnemyVocal = 0
			--debugPrint('EnemyVocal ','EventEND')
		end
		if tonumber(value1) == 1 then
			EnemyVocal = 1
			--debugPrint('EnemyVocal ','EventStart')
		end

		runTimer('EnemyVocalTimer',value2)

	end
end

function opponentNoteHit()
	if EnemyVocal == 1 then
		if getProperty('health') > 0.1 then
			setProperty('health', getProperty('health') - 0.025);--ここの数字を調整しよう！
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'EnemyVocalTimer' then
		EnemyVocal = 0
		--debugPrint('EnemyVocal ','EventEND')
	end
end