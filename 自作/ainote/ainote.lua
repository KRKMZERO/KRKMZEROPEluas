function onUpdate()
	if keyJustPressed('space') then 
		playSound('Hey')
		characterPlayAnim('boyfriend', 'hey', true)
		setProperty('boyfriend.specialAnim', true);
	end
	
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.B') then
		playSound('Hey')
		characterPlayAnim('boyfriend', 'hey', true)
		setProperty('boyfriend.specialAnim', true);
		characterPlayAnim('gf', 'cheer', true)
		setProperty('gf.specialAnim', true);
		characterPlayAnim('dad', 'hey', true)
		setProperty('dad.specialAnim', true);
	end
	
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then 
		playSound('Clup')
	end
	
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') then
		playSound('Clup')
	end
end
--[[
	if keyPressed('up') then 
		playSound('Clup')
	end
	
	if keyPressed('down') then 
		playSound('Clup')
	end
	
	if keyPressed('left') then 
		playSound('Clup')
	end
	
	if keyPressed('right') then 
		playSound('Clup')
	end
--]]
--[[
getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE')
lePlayState.getControl('NOTE_RIGHT_P')
keyPressed('right')

--]]