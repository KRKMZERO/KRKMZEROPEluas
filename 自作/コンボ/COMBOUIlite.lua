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

	--setProperty('showRating', false);
	setProperty('showComboNum', false)
end
function goodNoteHit()
	setProperty('002.alpha', 1)
	doTweenAlpha('002Tween', '002', 0, 0.3, linear)

	setProperty('003.alpha', 1)
	doTweenAlpha('003Tween', '003', 0, 0.3, linear)
end

function onUpdate()
	setTextString('002', getProperty('combo'));
end
