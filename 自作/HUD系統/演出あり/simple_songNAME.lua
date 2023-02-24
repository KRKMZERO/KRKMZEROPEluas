function onCreatePost()

	makeLuaText('SongnemeText001', 'Score', 1210, '-1000', 500)--675
	--screenCenter('SongnemeText001', 'x')
	setTextSize('SongnemeText001', 75)
	addLuaText('SongnemeText001')
	setProperty('SongnemeText001.alpha', 0.75)
	setObjectCamera('SongnemeText001','other')--flont CENTER
	setTextAlignment("SongnemeText001", "left")

	setObjectOrder('SongnemeText001', 100);

	setProperty('SongnemeText001.color', getColorFromHex('000000'))--字体の色です
	setTextBorder('SongnemeText001','3','FFFFFF')--縁取りの色です

	setProperty('SongnemeText001.antialiasing', true)

	--setTextFont('SongnemeText001','NanigoSquare-Bold.ttf')

	makeLuaText('SongnemeText002', 'Score', 1210, 'x', 800)--675
	screenCenter('SongnemeText002', 'x')
	setTextSize('SongnemeText002', 25)
	addLuaText('SongnemeText002')
	setProperty('SongnemeText002.alpha', 0.75)
	setObjectCamera('SongnemeText002','other')--flont CENTER

	setProperty('SongnemeText002.antialiasing', true)

end
function onSongStart()
	doTweenX('Songneme001Xtween', 'SongnemeText001', 5, 2.5, 'QuintInOut')--QuintIn
	runTimer('timeTxtWait', 7.5, 1)
	BEAT = 1
end
function onUpdate()
	setTextString('SongnemeText001', ''..getProperty(songName))
	setTextString('SongnemeText002', ''..getProperty(songName))
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'timeTxtWait' then
		doTweenY('Songneme001Vtween', 'SongnemeText001', 705, 5, 'QuintInOut')--CircIn
	end
	if tag == 'BEAT2GO' then
		BEAT = 2
	end
	if tag == 'BEAT1GO' then
		BEAT = 1
	end
end
function onTweenCompleted(tag)
	if tag == 'Songneme001Vtween' then
		doTweenY('Songneme002Vtween', 'SongnemeText002', 600, 5, 'QuintInOut')--CircIn
	end
end

function onBeatHit()
	--debugPrint(BEAT)
	if BEAT == 1 then
		setProperty('SongnemeText002.color', getColorFromHex('000000'))--字体の色です
		setTextBorder('SongnemeText002','2','FFFFFF')--縁取りの色です

		runTimer('BEAT2GO', 0.01, 1)
	end
	if BEAT == 2 then
		setProperty('SongnemeText002.color', getColorFromHex('FFFFFF'))--字体の色です
		setTextBorder('SongnemeText002','2','000000')--縁取りの色です

		runTimer('BEAT1GO', 0.01, 1)
	end
end