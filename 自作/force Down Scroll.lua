local playerDownSetting = false;

function onCreate()
	if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		playerDownSetting = true;
	else
		setPropertyFromClass('ClientPrefs', 'downScroll', true);
	end
end

function onEndSong()
	playerMiddleSetting = false;
	setPropertyFromClass('ClientPrefs', 'downScroll', false);
end
function onDestroy()
	playerMiddleSetting = false;
	setPropertyFromClass('ClientPrefs', 'downScroll', false);
end
