function onCreate()
	makeLuaText('001', 'NO PAUSE.', 1210, 'x', 'y')
	setObjectCamera('001', 'hud')
	screenCenter('001', 'x')
	screenCenter('001', 'y')
	setTextSize('001', 40)
	setProperty('001.alpha', 0)
	addLuaText('001')
	setProperty('001.antialiasing', true);
	setProperty("001.color", getColorFromHex("FF0000"))
end
function onPause()
	setProperty('001.alpha', 1)
	runTimer('001time', 0.5, 1)
	return Function_Stop;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == '001time' then
		doTweenAlpha('001Tween', '001', 0, 0.3, linear)
	end
end