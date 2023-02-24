--スペースボタンで回復できる代わりに
--敵が歌うたびに強くゲージを押してきます
--普通にゲームオーバーになるので気を付けてね
function onUpdate()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') then --スペースキーで回復
		setProperty('health', health+ 0.200);
	end
	
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then --Gキーで回復(スペースキーより半減）
		setProperty('health', health+ 0.100);
	end
	
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') then --Hキーで回復(スペースキーより半減）
		setProperty('health', health+ 0.100);
	end
end

function opponentNoteHit()
	health = getProperty('health')
	if getProperty('health') > 0 then
		setProperty('health', health- 0.050);
	end
end


