--easy configs--
missLimit = 10 --this is the miss limit, if you put the value 0 you will die instantly, so dont put 0
showHealthBar = false --if the value is false the health bar will not be shown
SETy = 80

--da code--
function onCreate()
	makeLuaText('limitText', 'Miss limit', 1210, 'timeTxt.X', SETy +0)
	setObjectCamera('limitText', 'hud')
	screenCenter('limitText', 'x')
	setTextSize('limitText', 30)
	setProperty('limitText.alpha', 0)
	addLuaText('limitText')

	makeLuaText('limit',missLimit, 1410, 'timeTxt.X', SETy + 30)
	setObjectCamera('limit', 'hud')
	screenCenter('limit', 'x')
	setTextSize('limit', 30)
	setProperty('limit.alpha', 0)
	addLuaText('limit')
end

function onUpdate()
	if showHealthBar == false then
		setProperty('healthBarBG.visible', false)
		setProperty('healthBar.visible', false)
		setProperty('iconP1.visible', false)
		setProperty('iconP2.visible', false)
	end

	setTextString('limit', missLimit)

	if missLimit <= -1 then
		setProperty('health', 0)
	end
end
function noteMiss()
	missLimit = missLimit - 1
end
function onSongStart()
	doTweenAlpha('limitTextTween', 'limitText', 1, 0.5, linear)
	doTweenAlpha('limitTween', 'limit', 1, 0.3, linear)
end
