function onCreate()
	makeLuaText('Don', "Don't Miss", 1500, 'x', 'y')
	setObjectCamera('Don', 'other')
	setTextAlignment('Don','center')
	screenCenter('Don', 'xy')
	setTextSize('Don', 225)
	setProperty('Don.alpha', 0)
	addLuaText('Don')
	setProperty('Don.y', -40)
	setObjectOrder('Don', 100)
	setProperty('Don.antialiasing', false);
	setTextBorder('Don',0,'000000')
	scaleObject('Don',1,3)

	setTextFont('Don', 'goodbyeDespair.ttf');

end
function onSongStart()
	setProperty('Don.alpha', 1)
	doTweenAlpha('Don0','Don',0,5,'circInOut')
end
function noteMiss()
	setProperty('health', getProperty('health') - 100);
end
function onGameOverStart()
	makeLuaText('Gameover', "oh miss it...", 1500, 'x', 'y')
	setObjectCamera('Gameover', 'other')
	setTextAlignment('Gameover','center')
	screenCenter('Gameover', 'xy')
	setTextSize('Gameover', 200)
	setProperty('Gameover.alpha', 1)
	addLuaText('Gameover')
	setObjectOrder('Gameover', 100)
	setProperty('Gameover.antialiasing', false);
	setTextFont('Gameover', 'goodbyeDespair.ttf');
end