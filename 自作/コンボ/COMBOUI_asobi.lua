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
	setObjectOrder('003', 100)
	setProperty('003.antialiasing', true);
	setProperty('003.y', 325)--300

	setProperty('showRating', false);
	setProperty('showComboNum', false)
	
	--判定表示
	makeLuaText('004', '', 1210, 'x', 'y')
	setObjectCamera('004', 'other')
	screenCenter('004', 'xy')
	setTextSize('004', 20)
	setProperty('004.alpha', 0)
	addLuaText('004')
	setObjectOrder('004', 100)
	setProperty('004.antialiasing', true);
	setProperty('004.y', 400)--300
end
function goodNoteHit()
	setProperty('002.alpha', 1)
	doTweenAlpha('002Tween', '002', 0, 0.3, linear)

	setProperty('003.alpha', 1)
	doTweenAlpha('003Tween', '003', 0, 0.3, linear)

	--TT
	setProperty('004.alpha', 1)
	doTweenAlpha('004Tween', '004', 0, 0.3, linear)

end
--FFFFFF　白
--FF0000　赤
function onUpdate()
	setTextString('002', getProperty('combo'))
	
	setTextString('004', getProperty('songScore'))
end