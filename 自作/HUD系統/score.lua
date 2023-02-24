textSize = 20
local GAMEOVER = false -- ON or NO true false

function onCreatePost()
	makeLuaText('limitText', 'Score', 1210, 'timeTxt.X', 100)
	--setTextAlignment('limitText', 'left')
	setObjectCamera('limitText', 'hud')
	screenCenter('limitText', 'x')--画面の中心
	setTextSize('limitText', textSize)
	setProperty('limitText.alpha', 0)
	addLuaText('limitText')

	makeLuaText('limit',"score", 1410, 'timeTxt.X', 120)
	--setTextAlignment('limit', 'left')
	setObjectCamera('limit', 'hud')
	screenCenter('limit', 'x')
	setTextSize('limit', textSize)
	setProperty('limit.alpha', 0)
	addLuaText('limit')

	setProperty('iconP2.visible', true)
	setProperty('iconP1.visible', true)
	setProperty('scoreTxt.visible', false);
end

function onUpdate()
	setTextString('limit',""..getProperty('songScore'));
end

function onSongStart()
	doTweenAlpha('limitTextTween', 'limitText', 1, 0.5, linear)
	doTweenAlpha('limitTween', 'limit', 1, 0.3, linear)
end

function onStepHit()
	if GAMEOVER == true then
		if getProperty('health') > 0.1 then
			setProperty('health', getProperty('health') + 0.100);
		end
	end
end