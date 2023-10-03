function onEvent(name, value1, value2)
	if name == "dokudokuEvent" then

		if tonumber(value1) == 0 then
			dokudoku = 0
			--debugPrint('dokudoku ','EventEND')
		end
		if tonumber(value1) == 1 then
			dokudoku = 1
			--debugPrint('dokudoku ','EventStart')
		end

		runTimer('dokudokuTimer',value2)

	end
end

function onStepHit()
	if dokudoku == 1 then
		if getProperty('health') > 0.1 then
			setProperty('health', getProperty('health') - 0.025);--ここの数字を調整しよう！
   		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'dokudokuTimer' then
		dokudoku = 0
		--debugPrint('dokudoku ','EventEND')
	end
end