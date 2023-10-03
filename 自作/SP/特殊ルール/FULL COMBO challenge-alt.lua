
function onCreate()

	makeLuaText('YellowTxt','challengemode!',500, 'x' ,550);-- spase x y
	setTextSize('YellowTxt', 30);
	addLuaText('YellowTxt')
	setProperty('YellowTxt.color', getColorFromHex('FFF00F'))
	setProperty('YellowTxt.alpha', 0)
	setObjectCamera('YellowTxt', 'hud')--hud other
	screenCenter('YellowTxt', 'x')
	setProperty('YellowTxt.antialiasing', true)

	if instakillOnMiss then
		doTweenAlpha('YellowTxtTweenon', 'YellowTxt', 1, 1.5, 'linear')
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