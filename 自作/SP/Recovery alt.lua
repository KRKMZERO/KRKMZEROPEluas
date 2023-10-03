--動画取り上げ用コードです
--コード--
function onSongStart()
	runTimer('Recovery', 0.01, 0)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'Recovery' then
		if getProperty('health') >= 1 then
			setProperty('health', getProperty('health') - 0.01);
		end
		if getProperty('health') <= 1 then
			setProperty('health', getProperty('health') + 0.01);
		end
	end
end