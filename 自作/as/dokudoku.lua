function onBeatHit()
    if getProperty('health') > 0.1 then
		setProperty('health', getProperty('health') - 0.010);
	end
end

function onStepHit()
    if getProperty('health') > 0.1 then
		setProperty('health', getProperty('health') - 0.010);
	end
end