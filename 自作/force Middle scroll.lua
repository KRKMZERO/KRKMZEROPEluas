local playerMiddleSetting = false;

function onCreate()
	if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
		playerMiddleSetting = true;
	else
		setPropertyFromClass('ClientPrefs', 'middleScroll', true);
	end
end

function onEndSong()
	playerMiddleSetting = false;
	setPropertyFromClass('ClientPrefs', 'middleScroll', false);
end
function onDestroy()
	playerMiddleSetting = false;
	setPropertyFromClass('ClientPrefs', 'middleScroll', false);
end
