
function onCreate()
	runTimer('GO001',0.5,0)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'GO001' then
		triggerEvent('Change Scroll Speed',getRandomInt(80,120)/100,0.5)
	end
end