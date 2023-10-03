local death = 3
function onCreate()

	makeLuaSprite('pirated_editionFunkin_isNO', 'kfunkin', 0, 0);
	addLuaSprite('pirated_editionFunkin_isNO', true);
	scaleObject('pirated_editionFunkin_isNO', 1, 1);
	setObjectCamera('pirated_editionFunkin_isNO','other')

	makeLuaText('If_you_MISS_you_ll_die', 'COMBO', 1280, '-480', '50')
	setObjectCamera('If_you_MISS_you_ll_die', 'other')
	setTextSize('If_you_MISS_you_ll_die', 80)
	addLuaText('If_you_MISS_you_ll_die')

	makeLuaText('SCORE', '', 1280, '520', '100')--765
	setObjectCamera('SCORE', 'other')
	setTextSize('SCORE', 40)
	addLuaText('SCORE')

	setTextAlignment('If_you_MISS_you_ll_die', "center")
	setTextAlignment('SCORE', "center")

	setProperty('If_you_MISS_you_ll_die.antialiasing', true);
	setProperty('SCORE.antialiasing', true);
end
function noteMiss()
	death = death -1
end

function onUpdate()
	setTextString('If_you_MISS_you_ll_die', death);
	setTextString('SCORE', getProperty('songScore'));

	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('scoreTxt.visible', false)

	if death == 0 then
	DEATHNOW()
	end
end

function DEATHNOW()
	setProperty('health', 0 )
end