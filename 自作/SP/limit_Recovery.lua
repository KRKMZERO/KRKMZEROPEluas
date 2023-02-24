--設定--
Recoveryreft = 5 


--コード--
function onCreate()
	makeLuaText('limitText', 'RecoveryLimit', 1210, 'timeTxt.X', 150)
	--setTextAlignment('limitText', 'left')
	setObjectCamera('limitText', 'hud')
	screenCenter('limitText', 'x')
	setTextSize('limitText', 20)
	setProperty('limitText.alpha', 0)
	addLuaText('limitText')

	makeLuaText('limit', Recoveryreft, 1410, 'timeTxt.X', 170)
	--setTextAlignment('limit', 'left')
	setObjectCamera('limit', 'hud')
	screenCenter('limit', 'x')
	setTextSize('limit', 20)
	setProperty('limit.alpha', 0)
	addLuaText('limit')
end

function onUpdate()
	if Recoveryreft == 0 then --else not
		--NoRecovery
		if keyJustPressed('space') then
			--debugPrint("Recovery failure")
		end
	else
		if keyJustPressed('space') then 
			Recoveryreft = Recoveryreft - 1
			setProperty('health', getProperty('health') + 1.500);
			--debugPrint("Recovery complete")
		end
	end

	--local Recoveryreft = 5

	setTextString('limit', Recoveryreft)
end

function onSongStart()
	doTweenAlpha('limitTextTween', 'limitText', 1, 0.5, linear)
	doTweenAlpha('limitTween', 'limit', 1, 0.3, linear)
end
