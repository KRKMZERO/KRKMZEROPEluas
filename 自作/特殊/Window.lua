function onUpdate()

	local  timeElapsed = math.floor(getProperty('songTime')/1000)
	local  timeTotal = math.floor(getProperty('songLength')/1000)
	local timeElapsedFixed = string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60)
	local timeTotalFixed = string.format("%.2d:%.2d", timeTotal/60%60, timeTotal%60)

	setPropertyFromClass("openfl.Lib", "application.window.title","Friday Night Funkin': Psych Engine "..getProperty(songName)..' ['..timeElapsedFixed .. '/' .. timeTotalFixed.. '] Score:'..getProperty('songScore')..' Miss:'..getProperty('songMisses'))
end
function onDestroy()
	setPropertyFromClass("openfl.Lib", "application.window.title","Friday Night Funkin': Psych Engine")
end
function onGameOver()
	setPropertyFromClass("openfl.Lib", "application.window.title","Friday Night Funkin': Psych Engine")
end
