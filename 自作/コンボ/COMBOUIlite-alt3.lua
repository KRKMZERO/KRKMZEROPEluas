function onCreate()
	makeLuaText('002', '', 1210, 'x', 'y')
	setObjectCamera('002', 'other')
	screenCenter('002', 'xy')
	setTextSize('002', 40)
	setProperty('002.alpha', 0)
	addLuaText('002')
	setObjectOrder('002', 100)
	setProperty('002.antialiasing', true);

	makeLuaText('003', 'COMBO', 1210, 'x', 'y')
	setObjectCamera('003', 'other')
	screenCenter('003', 'xy')
	setTextSize('003', 20)
	setProperty('003.alpha', 0)
	addLuaText('003')
	setObjectOrder('003', 101)
	setProperty('003.antialiasing', true);

	makeLuaText('004', 'MISS!', 1210, 'x', 'y')
	setObjectCamera('004', 'other')
	screenCenter('004', 'xy')
	setTextSize('004', 20)
	setProperty('004.alpha', 0)
	addLuaText('004')
	setObjectOrder('004', 102)
	setProperty('004.antialiasing', true);
	setTextColor('004','FF0000')

	setProperty('showRating', false);
	setProperty('showComboNum', false)

end
function goodNoteHit()
	setProperty('002.alpha', 1)
	doTweenAlpha('002Tween', '002', 0, 0.3, linear)

	setProperty('003.alpha', 1)
	doTweenAlpha('003Tween', '003', 0, 0.3, linear)
end
function noteMiss()
	missalt = getRandomInt(1, 11)
	if missalt >= 0 and missalt <= 8 then
		setTextString('004', 'MISS!');
	elseif missalt == 9 then
		setTextString('004', 'Come on!!!');
	elseif missalt == 10 then
		setTextString('004', 'You can do it!');
	elseif missalt == 11 then
		setTextString('004', "Don't lose!");
	end
	setProperty('004.alpha', 1)
	doTweenAlpha('004Tween', '004', 0, 1, linear)
end
function onUpdate()
	setTextString('002', getProperty('combo'));

	setProperty('003.y', defaultPlayerStrumY0 + 10)
	setProperty('002.y', defaultPlayerStrumY0 + 30)
	setProperty('004.y', defaultPlayerStrumY0 + 80)
end
