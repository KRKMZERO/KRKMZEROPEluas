function onStepHit()
    if getProperty('health') > 0.1 then
		setProperty('health', getProperty('health') - 0.015);
	end
end