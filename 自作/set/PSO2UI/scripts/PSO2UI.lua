MAXPP = 0
function onCreate()
	MAXPP = bpm
	PP = 100

	setProperty('healthGain',0)

	makeLuaSprite('PSO2UI001', 'PSO2UI', 0, 0);
	addLuaSprite('PSO2UI001', true);
	scaleObject('PSO2UI001', 1, 1);
	--hud or other
	setObjectCamera('PSO2UI001','hud')

		makeLuaText('PSO2UI002','Lv:   40',500, 20 ,620);-- spase x y
		setTextSize('PSO2UI002', 50);
		setTextAlignment('PSO2UI002','left')
		addLuaText('PSO2UI002')
		setProperty('PSO2UI002.color', getColorFromHex('FFFFFF'))
		setObjectCamera('PSO2UI002', 'hud')
		setProperty('PSO2UI002.antialiasing', true)
		scaleObject('PSO2UI002', 0.37, 0.40);

		makeLuaText('PSO2UI003','BOYFRIEND',700, 55 ,643);-- spase x y
		setTextSize('PSO2UI003', 50);
		setTextAlignment('PSO2UI003','left')
		addLuaText('PSO2UI003')
		setProperty('PSO2UI003.color', getColorFromHex('FFFFFF'))
		setObjectCamera('PSO2UI003', 'hud')
		setProperty('PSO2UI003.antialiasing', true)
		scaleObject('PSO2UI003', 0.40, 0.40);

		makeLuaText('PSO2UI004','HP: 1000/1000',500, 50 ,663);-- spase x y
		setTextSize('PSO2UI004', 50);
		setTextAlignment('PSO2UI004','left')
		addLuaText('PSO2UI004')
		setProperty('PSO2UI004.color', getColorFromHex('FFFFFF'))
		setObjectCamera('PSO2UI004', 'hud')
		setProperty('PSO2UI004.antialiasing', true)
		scaleObject('PSO2UI004', 0.35, 0.35);

		makeLuaText('PSO2UI005','PP: 115/115',500, 50 ,684);-- spase x y
		setTextSize('PSO2UI005', 50);
		setTextAlignment('PSO2UI005','left')
		addLuaText('PSO2UI005')
		setProperty('PSO2UI005.color', getColorFromHex('FFFFFF'))
		setObjectCamera('PSO2UI005', 'hud')
		setProperty('PSO2UI005.antialiasing', true)
		scaleObject('PSO2UI005', 0.35, 0.35);

		--FREE TEXT
		makeLuaText('PSO2UI006','SONG '..songName,500, 940 ,450);-- spase x y
		setTextSize('PSO2UI006', 20);
		setTextAlignment('PSO2UI006','left')
		addLuaText('PSO2UI006')
		setProperty('PSO2UI006.color', getColorFromHex('FFFFFF'))--FFFFFF
		setTextBorder('PSO2UI006','0','FFFFFF')--縁取りの色です
		setProperty('PSO2UI006.alpha', 0.25)
		setObjectCamera('PSO2UI006', 'hud')
		setProperty('PSO2UI006.antialiasing', true)

		VLCT = getRandomInt(1,100)
		
end
function onUpdate()--細かい設定
	health = getProperty('health')

	setTextString('PSO2UI004', 'HP: '..math.floor((health*500)/1).. '/1000')
	setTextString('PSO2UI005', 'PP: ' ..PP..' /'..MAXPP)
--Group
	--setProperty('PSO2UI006.y', getProperty('boyfriend.y') - 50)
	--setProperty('PSO2UI006.x', getProperty('boyfriend.x'))

	if boyfriendName == 'bf' then
		setTextString('PSO2UI003', 'BOYFRIEND')
		setTextString('PSO2UI002', 'Lv:   40')
	else
		setTextString('PSO2UI003', boyfriendName)
		--VLCT = getRandomInt(1,100)
		setTextString('PSO2UI002', 'Lv:   '..VLCT)
	end

	setProperty("timeTxt.y" , 11)
	setProperty("timeTxt.x" , 20)
	setProperty("timeBarBG.y" , 20)
	setProperty("timeBarBG.x" , 120)
	setProperty("timeBarBG.scale.x", 1.5)
	setProperty("timeBarBG.scale.y", 1.5)
    setProperty("timeBar.y", 20)
	setProperty("timeBar.x", 120)
	setProperty("timeBar.scale.x", 1.5)
	setProperty("timeBar.scale.y", 1.5)

	setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
    setProperty('scoreTxt.visible', false);

	setTextString('PSO2UI006', 'score:'..score)
end
function onUpdatePost(elapsed)
	if timeBarType == 'Time Left' or timeBarType == 'Time Elapsed' or timeBarType == 'Song Name' then
		local  timeElapsed = math.floor(getProperty('songTime')/1000)
		local  timeTotal = math.floor(getProperty('songLength')/1000)
		local timeElapsedFixed = string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60)
		local timeTotalFixed = string.format("%.2d:%.2d", timeTotal/60%60, timeTotal%60)
		
		setTextAlignment('timeTxt','left')
		setTextSize('timeTxt',20)
		setTextWidth('timeTxt',500)
		setTextString('timeTxt','[ ' ..songName.. ' ] '..timeElapsedFixed .. '/' .. timeTotalFixed)
	end
end
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if not isSustainNote then
		if PP >= 5 then
			PP = PP - 5
			if health < 2 then
				setProperty('health', getProperty('health') + 0.05);--ここの数字を調整しよう！
			end
		end
	end
	if isSustainNote then
		if PP < MAXPP then
			PP = PP + 1
		end
	end
end
function onSongStart()
    runTimer('PPADD',0.15,0)
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag =='PPADD' and PP < MAXPP then
		PP = PP + 1
	end
end