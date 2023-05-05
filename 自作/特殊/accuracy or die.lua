function onCreatePost()--特殊なUI変更
	makeLuaText('accuracy','',500,x,getProperty('healthBar.y') - 20); -- x y values go on the second and third 0's
	setTextAlignment("accuracy", "center");
	setTextSize('accuracy', 20);
	addLuaText('accuracy')
	screenCenter('accuracy', 'x')


	setProperty('accuracy.antialiasing', true)

	makeLuaText('WANING','',500,x,getProperty('accuracy.y') + 50); -- x y values go on the second and third 0's
	setTextAlignment("WANING", "center");
	setTextSize('WANING', 20);
	addLuaText('WANING')
	screenCenter('WANING', 'x')
	setProperty('WANING.alpha', 1)
	setProperty('WANING.color', getColorFromHex('FF0000'))

	setProperty('WANING.antialiasing', true)

	runTimer('dead',1,0)
	debugPrint('精度を',normaAcc,'%以上保て！')
	debugPrint(normaAcc,'%以下でも１０秒は保つぞ！、その間に精度を高めろ！')
end
deadCountdown = 10
normaAcc = 95.00
function onUpdate()

	RPC = getProperty('ratingPercent')
	Acc = math.floor((RPC*100)*100)/100
	setTextString('accuracy', 'Accuracy\n'..math.floor((RPC*100)*100)/100 ..'%');

	setTextString('WANING', 'WANING\n'..deadCountdown);
	if Acc >= normaAcc or Acc == 0 then
		setProperty('accuracy.color', getColorFromHex('FFFFFF'))

		deadCountdown = 10
		setProperty('WANING.alpha', 0)
	elseif Acc < normaAcc then
		setProperty('accuracy.color', getColorFromHex('FF0000'))

		setProperty('WANING.alpha', 1)
		--os.execute('sleep 1')
	end
end
HItstart = false
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	HItstart = true
end
function onTimerCompleted(timetag, loops, loopsLeft)
	if timetag == 'dead' then
		--debugPrint('OK')
		if Acc < normaAcc and HItstart == true then

			deadCountdown = deadCountdown - 1
			if deadCountdown == -1 then
				setHealth(-1)
			end
		end
	end
end
--[[
function onBeatHit()
	if curBeat % 2 == 0 then
		debugPrint('OK')
		if Acc < 90.00 and HItstart == true then
	
			deadCountdown = deadCountdown - 1
			if deadCountdown == -1 then
				setHealth(0)
			end
		end
	end
end
]]