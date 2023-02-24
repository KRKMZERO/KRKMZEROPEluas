--動画撮影用に使ってるカットしやすくするためのluaです
function onCreate()
	makeLuaSprite('Blackoutstart','',-10,-10)
	makeGraphic('Blackoutstart', 1300, 800, '000000')
	addLuaSprite('Blackoutstart')
	setProperty('Blackoutstart.alpha', 1)
	setObjectCamera('Blackoutstart', 'other')
	setObjectOrder('Blackoutstart', 1000);
	
	if allowCountdown == true then
		return Function_Continue
	end

end

local allowCountdown = false

function onTweenCompleted(tag)
	if tag == 'SBlackTween' then
		allowCountdown = true
		startCountdown()
		return Function_Continue
	end
end

function onStartCountdown()
		if not allowCountdown then
			doTweenAlpha('SBlackTween', 'Blackoutstart', 0, 2, linear)
			allowCountdown = true
			return Function_Stop
		end
	return Function_Continue
end
