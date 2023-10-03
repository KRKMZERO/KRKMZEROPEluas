
function onCreate()
	if instakillOnMiss then
		makeLuaText('FULLCOMBO','Go for a Perfect!',500, 100 ,45);-- spase x y
		setTextSize('FULLCOMBO', 30);
		addLuaText('FULLCOMBO')
		setProperty('FULLCOMBO.color', getColorFromHex('FFFFFF'))
		setObjectCamera('FULLCOMBO', 'other')
		setProperty('FULLCOMBO.antialiasing', true)

		makeLuaText('FULLCOMBO-alt','P',500, 25 ,10);-- spase x y
		setTextSize('FULLCOMBO-alt', 80);
		addLuaText('FULLCOMBO-alt')
		setProperty('FULLCOMBO-alt.color', getColorFromHex('FF00F9'))
		setObjectCamera('FULLCOMBO-alt', 'other')
		setProperty('FULLCOMBO-alt.antialiasing', true)
		setTextBorder('FULLCOMBO-alt', 3 ,'000000')

		setTextAlignment('FULLCOMBO','left')
		setTextAlignment('FULLCOMBO-alt','left')
	end
end
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if instakillOnMiss then
		setProperty('FULLCOMBO-alt.color', getColorFromHex('FFF900'))
		setProperty('FULLCOMBO-alt.y', 0)
		doTweenY('FULLCOMBO-altTweenY', 'FULLCOMBO-alt', 10, 0.25, 'circInOut')
		doTweenColor('FULLCOMBO-altColorTween', 'FULLCOMBO-alt', 'FF00F9', 0.5, 'linear')
	end
end
function onBeatHit()
	setProperty('FULLCOMBO.y', 45)
	setProperty('FULLCOMBO.x', 100)
	scaleObject('FULLCOMBO',1.05,1.05)
	doTweenY('FULLCOMBOScaleTweenY', 'FULLCOMBO.scale', 1, 0.25, 'circIn')
	doTweenX('FULLCOMBOScaleTweenX', 'FULLCOMBO.scale', 1, 0.25, 'circIn')
	--doTweenZoom('FULLCOMBOTweenZoom', 'FULLCOMBO', 1, 0.25, 'circIn')--circInOut
end