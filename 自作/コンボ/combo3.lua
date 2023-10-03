function onCreate()
	makeLuaText('002', '', 1210, 'x', 'y')
	setObjectCamera('002', 'hud')
	screenCenter('002', 'xy')
	setTextSize('002', 40)
	setProperty('002.alpha', 0)
	addLuaText('002')
	setProperty('002.antialiasing', true);

	setTextString('002', combo);
end
function goodNoteHit()
	
	combo = getProperty('combo')

	setProperty('002.alpha', 1)
	doTweenAlpha('002Tween', '002', 0, 0.3, linear)

	if combo >= 10 then
		addScore(10)
	end
	if combo >= 50 then
		addScore(10)
	end
	if combo >= 100 then
		addScore(10)
	end
	if combo >= 150 then
		addScore(10)
	end
	if combo >= 200 then
		addScore(10)
	end
	if combo >= 250 then
		addScore(10)
	end
	if combo >= 300 then
		addScore(10)
	end
	if combo >= 350 then
		addScore(10)
	end
	if combo >= 400 then
		addScore(10)
	end
end

function onUpdate()
	setTextString('002', getProperty('combo'));
end
