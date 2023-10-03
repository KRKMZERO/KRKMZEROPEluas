function onBeatHit()
	if getProperty('health') > 0.1 then
		setProperty('health', getProperty('health') - 0.005);
	end
end

function onStepHit()
	if getProperty('health') > 0.1 then
		setProperty('health', getProperty('health') - 0.005);
	end
end

textSize = 30 --テキストサイズ

function onCreate()
	makeLuaText('limitText', 'スぺースキーで対抗', 1210, 'timeTxt.X', 80)
	--setTextAlignment('limitText', 'left')
	setObjectCamera('limitText', 'hud')
	screenCenter('limitText', 'x')
	setTextSize('limitText', textSize)
	setProperty('limitText.alpha', 0)
	addLuaText('limitText')

	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') then --スペースキーで回復
		setProperty('health', health + 0.200);
	end
end

function onSongStart()
	doTweenAlpha('limitTextTween', 'limitText', 1, 0.5, linear)
end
--[[
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health - 0.005);
    end
end
--]]