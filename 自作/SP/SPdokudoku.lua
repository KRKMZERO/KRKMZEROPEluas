function onStepHit()
    if getProperty('health') > 0.15 then
		setProperty('health', getProperty('health') - 0.005);
	end
end
function opponentNoteHit()
    if getProperty('health') > 0.15 then
        setProperty('health', getProperty('health') - 0.005);
    end
end
function onBeatHit()
    if getProperty('health') > 0.15 then
        setProperty('health', getProperty('health') - 0.005);
    end
end
function onSectionHit()
    if getProperty('health') > 0.15 then
        setProperty('health', getProperty('health') - 0.005);
    end
end


--[[
keyboardJustPressed
keyboardPressed
keyboardReleased
keyJustPressed
keyPressed
keyReleased
]]