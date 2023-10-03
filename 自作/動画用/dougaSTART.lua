--動画撮影用に使ってるカットしやすくするためのluaです
function onCreate()
	makeLuaSprite('Blackoutstart','',-10,-10)
	makeGraphic('Blackoutstart', 1300, 800, '000000')
	addLuaSprite('Blackoutstart')
	setProperty('Blackoutstart.alpha', 1)
	setObjectCamera('Blackoutstart', 'other')
	setObjectOrder('Blackoutstart', 1000);

	--doTweenAlpha('SBlackTween', 'Blackoutstart', 0, 2, linear)
	setProperty("skipCountdown", true)

end
function onSongStart()
	doTweenAlpha('SBlackTween', 'Blackoutstart', 0, 2, linear)
end
