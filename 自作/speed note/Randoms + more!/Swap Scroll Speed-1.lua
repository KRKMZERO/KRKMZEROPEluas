
function onCreate()
	runTimer('GO001',0.5,0)
end
onewait = true
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'GO001' then
		if onewait == true then
			triggerEvent('Change Scroll Speed',1,0.5)
			onewait = false
		elseif onewait == false then
			triggerEvent('Change Scroll Speed',0.5,0.5)
			onewait = true
		end
	end
end