function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if not isSustainNote then
		SPHP = SPHP +10
	else
		SPHP = SPHP +2
	end
end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if not isSustainNote then
		SPHP = SPHP -5
	else
		SPHP = SPHP -1
	end
end
function noteMiss()
	SPHP = SPHP -50
end

SPHP = 1000

function onCreate()
	makeLuaText('SHPText', 'HP', 1210, 'timeTxt.X', 120)
	setObjectCamera('SHPText', 'hud')
	screenCenter('SHPText', 'x')--画面の中心
	setTextSize('SHPText', 25)
	--setProperty('SHPText.alpha', 0)
	addLuaText('SHPText')

	makeLuaText('SHP',"score", 1410, 'timeTxt.X', 140)
	setObjectCamera('SHP', 'hud')
	screenCenter('SHP', 'x')
	setTextSize('SHP', 25)
	--setProperty('SHP.alpha', 0)
	addLuaText('SHP')

	setObjectOrder('SHPText', 10)
	setObjectOrder('SHP', 10)



	


end
function onCountdownStarted()
	runTimer('decrease', 0.05, 0)
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'decrease' then
		if SPHP >= 1 then
			SPHP = SPHP -1
		end
		if SPHP <= 0 then
			setProperty('health', 0);
		end
	end
end
function onUpdate()
	setTextString('SHP',SPHP);
end
--setTextAlignment('ID', '')--left center right