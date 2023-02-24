local challenge = 0
function onCreate()
	makeLuaSprite('Yellowflash','',-10,-10)
	makeGraphic('Yellowflash', 1300, 800, 'FFFF00')
	addLuaSprite('Yellowflash')
	setProperty('Yellowflash.alpha', 0)
	setObjectCamera('Yellowflash', 'other')
	setObjectOrder('Yellowflash', 900);

	makeLuaText('YellowTxt','challengemode!',500, 'x' ,550);-- spase x y
	setTextSize('YellowTxt', 30);
	addLuaText('YellowTxt')
	setProperty('YellowTxt.color', getColorFromHex('FFF00F'))
	setProperty('YellowTxt.alpha', 0)
	setObjectCamera('YellowTxt', 'hud')--hud other
	screenCenter('YellowTxt', 'x')
	setProperty('YellowTxt.antialiasing', true)

	makeLuaText('CTxt','press To C for challenge mode',500, 5 ,685);
	setTextSize('CTxt', 20);
	addLuaText('CTxt')
	setProperty('CTxt.color', getColorFromHex('FFFFFF'))
	setTextAlignment('CTxt',"left")--left center right
	setProperty('CTxt.alpha', 1)
	setObjectCamera('CTxt', 'other')--hud other
	setProperty('CTxt.antialiasing', true)

end
function onUpdatePost()--elapsed
	if challenge == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.C') then


		playSound('confirmMenu', 0.9)

		setProperty('Yellowflash.alpha', 0.5)
		doTweenAlpha('YellowflashTween', 'Yellowflash', 0.0, 0.4, linear)

		challenge = 1

		doTweenAlpha('YellowTxtTweenon', 'YellowTxt', 1, 1.5, 'linear')
		
	end
	if challenge == 1 then
		setProperty('healthLoss',100)
	end
end
function onTweenCompleted(tag)
	if tag == 'YellowTxtTweenon' or tag == 'YellowTxtTween2' then
		doTweenAlpha('YellowTxtTween1', 'YellowTxt', 0, 1.5, 'linear')
	end
	if tag == 'YellowTxtTween1' then
		doTweenAlpha('YellowTxtTween2', 'YellowTxt', 1, 1.5, 'linear')
	end
end
function onSongStart()
	doTweenAlpha('CTxtTween', 'CTxt', 0, 10, linear)
end


--if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') then