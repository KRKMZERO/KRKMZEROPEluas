function onCreatePost()
	setObjectCamera('timeBar','other')
	setObjectCamera('timeBarBG','other')

	--setProperty("healthBar.y", 1690)
	setProperty('timeTxt.y', 2080)

	setTextSize('scoreTxt', 20)
	setTextBorder('scoreTxt','2','000000')

	--screenCenter('timeTxt', '100')

	setObjectOrder('scoreTxt', 1);
	setObjectOrder('timeTxt', 100);
	setObjectCamera('timeTxt','other')
	setObjectCamera('healthBar','other')
	setObjectCamera('healthBarBG','other')
	--アンチエイリアシング
	setProperty('scoreTxt.antialiasing', true)
	setProperty('timeTxt.antialiasing', true)
	if downscroll then
		setProperty('scoreTxt.y', -50)
		setProperty("timeBar.y", -50)-- 120
		setProperty("timeTxt.y", -50)-- 100

		setProperty('iconP1.y', -150)-- -600
		setProperty('iconP2.y', -150)-- -600

		setProperty('healthBar.y', -150)-- -600
	else
		setProperty('scoreTxt.y', 750)
		setProperty("timeBar.y", 750)-- 600
		setProperty("timeTxt.y", 750)-- 575

		setProperty('iconP1.y', 750)-- -600
		setProperty('iconP2.y', 750)-- -600

		setProperty('healthBar.y', 750)-- -600
	end
end
function onSongStart()
	if downscroll then
		doTweenY('scoreTxtTween', 'scoreTxt', 5, 5, 'QuintOut')
		doTweenY('timeBarTween', 'timeBar', 120, 5, 'QuintOut')
		doTweenY('timeTxtTween', 'timeTxt', 100, 5, 'QuintOut')

		doTweenY('iconP1Tween', 'iconP1', 15, 5, 'QuintOut')
		doTweenY('iconP2Tween', 'iconP2', 15, 5, 'QuintOut')

		doTweenY('healthBarTween', 'healthBar', 75, 5, 'QuintOut')
	else
		doTweenY('scoreTxtTween', 'scoreTxt', 675, 5, 'QuintOut')
		doTweenY('timeBarTween', 'timeBar', 600, 5, 'QuintOut')
		doTweenY('timeTxtTween', 'timeTxt', 575, 5, 'QuintOut')

		doTweenY('iconP1Tween', 'iconP1', 575, 5, 'QuintOut')
		doTweenY('iconP2Tween', 'iconP2', 575, 5, 'QuintOut')

		doTweenY('healthBarTween', 'healthBar', 650, 5, 'QuintOut')
	end
end

function onUpdatePost()
	--setProperty('iconP1.x', 875)-- 1150
	--setProperty('iconP2.x', 250)-- -20

	setObjectCamera('iconP1','other')--hud other
	setObjectCamera('iconP2','other')

	--setProperty('scoreTxt.y', -50)
	setObjectCamera('scoreTxt','other')
end