function onCreate()
UI = true
end

function onUpdate()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.TAB') then
		if UI == true then
			UI = false
		else
			UI = true
		end
	end
	if UI == true then
		setProperty('camHUD.visible', 1)
	else
		setProperty('camHUD.visible', 0)
	end
end
--if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Tab') then