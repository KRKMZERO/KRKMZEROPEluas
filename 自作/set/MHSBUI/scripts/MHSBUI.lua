defGain = 0
function onCreate()
	defGain = getProperty('healthGain')
	MHGain = 0.023 *defGain

	--debugPrint('MHGain ',MHGain)

	MAXSTAMINA = 200
	STAMINA = 200

	setProperty('healthGain',0)
	setProperty('health',2)

	makeLuaSprite('MHSBUI001', 'MHSBUI', 0, 0);
	addLuaSprite('MHSBUI001', true);
	scaleObject('MHSBUI001', 1, 1);
	--hud or other
	setObjectCamera('MHSBUI001','hud')

		makeLuaText('MHSBUI002','BOYFRIEND',500, 123 ,20);-- spase x y
		setTextSize('MHSBUI002', 50);
		setTextAlignment('MHSBUI002','left')
		addLuaText('MHSBUI002')
		setProperty('MHSBUI002.color', getColorFromHex('FFFFFF'))
		setObjectCamera('MHSBUI002', 'hud')
		setProperty('MHSBUI002.antialiasing', true)
		scaleObject('MHSBUI002', 0.40, 0.40);

		makeLuaText('MHSBUI003','GF',700, 46, 144);-- spase x y
		setTextSize('MHSBUI003', 50);
		setTextAlignment('MHSBUI003','left')
		addLuaText('MHSBUI003')
		setProperty('MHSBUI003.color', getColorFromHex('FFFFFF'))
		setObjectCamera('MHSBUI003', 'hud')
		setProperty('MHSBUI003.antialiasing', true)
		scaleObject('MHSBUI003', 0.40, 0.40);

		makeLuaSprite('HPber', 'empty', 110, 50)
		makeGraphic('HPber', 1000, 10, 'a7fad4')
		setObjectCamera('HPber', 'hud')
		addLuaSprite('HPber', true)
		setProperty('HPber.alpha',1)

		makeLuaSprite('STAMINAber', 'empty', 110, 67)
		makeGraphic('STAMINAber', 1000, 10, 'fff361')
		setObjectCamera('STAMINAber', 'hud')
		addLuaSprite('STAMINAber', true)
		setProperty('STAMINAber.alpha',1)

end
function onCreatePost()
	setProperty('healthGain',0)
end
function onUpdate()--細かい設定
	health = getProperty('health')
	hudhp = math.floor((health*400)/1)
	hudst = math.floor((STAMINA*3)/1)

	setGraphicSize('HPber', hudhp , 10 )
	setGraphicSize('STAMINAber', hudst , 10)

	setTextString('MHSBUI004', 'HP: '..math.floor((health*500)/1).. '/1000')
	setTextString('MHSBUI005', 'STAMINA: ' ..STAMINA..' /'..MAXSTAMINA)

	if boyfriendName == 'bf' then
		setTextString('MHSBUI002', 'BOYFRIEND')
	else
		setTextString('MHSBUI002', boyfriendName)
	end
	if gfName == 'gf' then
		setTextString('MHSBUI003', 'GIRLFRIEND')
	else
		setTextString('MHSBUI003', gfName)
	end
	if STAMINA >= 1 then
		setProperty('STAMINAber.alpha',1)
	else
		setProperty('STAMINAber.alpha',0)
	end


	--UI無し
	setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
    setProperty('scoreTxt.visible', false);

	setProperty('timeTxt.visible', false)
	setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)
end
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if not isSustainNote then
		if STAMINA >= 5 then
			STAMINA = STAMINA - 5
			if health < 2 then
				setProperty('health', getProperty('health') + MHGain);--ここの数字を調整しよう！ 0.05
			end
		end
		runTimer('waitst', 0.10, 1)
	end
	if isSustainNote then
		if STAMINA >= 1 then
			STAMINA = STAMINA - 1
			if health < 2 then
				setProperty('health', getProperty('health') + MHGain *0.5);--ここの数字を調整しよう！
			end
		end
		runTimer('waitst', 0.25, 1)
	end
	IFSTADD = false
end
function onSongStart()
    runTimer('STAMINAADD',0.025,0)
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag =='STAMINAADD' and STAMINA < MAXSTAMINA then
		if IFSTADD == true then
			STAMINA = STAMINA + 1
		end
	end
	if tag == 'waitst' then
		IFSTADD = true
		--debugPrint('OK')
	end
end