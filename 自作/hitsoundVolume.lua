function onCreate()
	setPropertyFromClass('ClientPrefs', 'hitsoundVolume', 10)
end
function onDestroy()
	setPropertyFromClass('ClientPrefs', 'hitsoundVolume', 0)
end
function onEndSong()
	setPropertyFromClass('ClientPrefs', 'hitsoundVolume', 0)
end