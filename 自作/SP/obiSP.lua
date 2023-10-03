
function onCreate()
    	makeLuaSprite('upBlack', '', 0, - 360);
	makeGraphic('upBlack', screenWidth + 100, 360, '000000');
	setObjectCamera('upBlack', 'hud');--camHUD hud
	addLuaSprite('upBlack', true);

	makeLuaSprite('downBlack', '', 0, screenHeight + 80);
	makeGraphic('downBlack', screenWidth + 100, 360, '000000');
	setObjectCamera('downBlack', 'hud');
	addLuaSprite('downBlack', true);

	setObjectOrder('upBlack', 5);
	setObjectOrder('downBlack', 5);

	screenCenter('upBlack', 'x');
	screenCenter('downBlack', 'x');
end
--quartout or linear
Beatstop = false 
function onBeatHit()
	if Beatstop == false then
		setProperty('upBlack.y', - 260)
		setProperty('downBlack.y', screenHeight - 100)

		doTweenY('upBlackOFFTweenY', 'upBlack', - 360 , 0.5, 'quartout')
		doTweenY('downBlackOFFTweenY', 'downBlack', screenHeight , 0.5, 'quartout')
	end
end
function onEvent(eventName, value1, value2)
	if eventName == 'Add Camera Zoom' then
		Beatstop = true
		setProperty('upBlack.y', - 260)
		setProperty('downBlack.y', screenHeight - 100)

		doTweenY('upBlackOFFTweenY', 'upBlack', - 360 , 0.5, 'quartout')
		doTweenY('downBlackOFFTweenY', 'downBlack', screenHeight , 0.5, 'quartout')
		runTimer('backnow',1)
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'backnow' then
		Beatstop = false
	end
end