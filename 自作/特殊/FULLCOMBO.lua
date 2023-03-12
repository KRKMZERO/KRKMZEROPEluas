
function onCreate()
	makeLuaText('FULLCOMTXT', 'FULL COMBO!!', 1210, 'x', 'y')
	setObjectCamera('FULLCOMTXT', 'hud')
	setTextAlignment("FULLCOMTXT", "CENTER");
	screenCenter('FULLCOMTXT', 'x')
	screenCenter('FULLCOMTXT', 'y')
	setTextSize('FULLCOMTXT', 75)
	setProperty('FULLCOMTXT.alpha', 0)
	addLuaText('FULLCOMTXT')
	setProperty('FULLCOMTXT.antialiasing', true);
	setProperty("FULLCOMTXT.color", getColorFromHex("ECFF51"))
	setTextBorder('FULLCOMTXT','1','000000')

end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'heytime' then
		characterPlayAnim('boyfriend', 'hey', true)
		setProperty('boyfriend.specialAnim', true);
		characterPlayAnim('gf', 'cheer', true)
		setProperty('gf.specialAnim', true);
		characterPlayAnim('dad', 'hey', true)
		setProperty('dad.specialAnim', true);
	end
	if tag == 'SONGendtime' then
	endSong()
	end
end

local checked = false

function onEndSong()
		if getProperty('ratingPercent') == 1 then
			setTextString('FULLCOMTXT', 'PERFECT COMBO!!');
		end
		if misses <= 0 and not checked then
			--do something
			checked = true
			doTweenAlpha('FULLCOMTXTTween', 'FULLCOMTXT', 1, 1, linear)
			playSound('confirmMenu', 0.9)
			runTimer('heytime', 2, 1)
			runTimer('SONGendtime', 3, 1)
			return Function_Stop
		end
	return Function_Continue
end
