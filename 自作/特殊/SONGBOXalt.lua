
function onCreate()
	--the tag at the end of the box
	makeLuaSprite('rBoxTag', '', screenWidth, 80)
	makeGraphic('rBoxTag', 300, 60, 'ffc24e')
	setObjectCamera('rBoxTag', 'other')
	addLuaSprite('rBoxTag', true)

	--the box
	makeLuaSprite('rBox', '', screenWidth, 80)
	makeGraphic('rBox', 300, 60, '000000')
	setObjectCamera('rBox', 'other')
	addLuaSprite('rBox', true)
	
	--the text for the "Now Playing" bit
	makeLuaText('rBoxText',"playing now…", 1280, screenWidth, 100)
	setTextAlignment('rBoxText', 'left')
	setObjectCamera('rBoxText', 'other')
	setTextSize('rBoxText',20)
	addLuaText('rBoxText', true)
	setTextString('rBoxText','playing now…')
	setProperty('rBoxText.alpha', 1)

	setObjectOrder('rBoxTag', 11);
	setObjectOrder('rBox', 12);
	setObjectOrder('rBoxText', 13);
	
end
function onSongStart()
	setTextString('rBoxText','playing now…')
	doTweenX('rMoveInOne', 'rBoxTag', screenWidth - 300, 1, 'quartout')
	doTweenX('rMoveInTwo', 'rBox', screenWidth - 280, 1.5, 'quartout')
	doTweenX('rMoveInThree', 'rBoxText', screenWidth - 270, 2, 'quartout')
	runTimer('Songtxt',3,1)
end
--SONGINFOcounter <= 10 then
function onTweenCompleted(tag)
	if tag == 'tExTen0' then
		doTweenAlpha('tExTen1','rBoxText',1,0.05,'ExpoOut')
	end
	if tag == 'tExTen1' then
		doTweenAlpha('tExTen2','rBoxText',0,0.05,'ExpoOut')
	end
	if tag == 'tExTen2' then
		doTweenAlpha('tExTen3','rBoxText',1,0.05,'ExpoOut')
	end
	if tag == 'tExTen3' then
		doTweenAlpha('tExTen4','rBoxText',0,0.05,'ExpoOut')
	end
	if tag == 'tExTen4' then
		doTweenAlpha('tExTen5','rBoxText',1,0.05,'ExpoOut')
	end
	if tag == 'tExTen5' then
		doTweenAlpha('tExTen6','rBoxText',0,0.05,'ExpoOut')
	end
	if tag == 'tExTen6' then
		doTweenAlpha('tExTen7','rBoxText',1,0.05,'ExpoOut')
	end
	if tag == 'tExTen7' then
		doTweenAlpha('tExTen8','rBoxText',0,0.05,'ExpoOut')
	end
	if tag == 'tExTen8' then
		doTweenAlpha('tExTen9','rBoxText',1,0.05,'ExpoOut')
	end
	if tag == 'tExTen9' then
		doTweenAlpha('tExTen10','rBoxText',0,0.05,'ExpoOut')
	end
	if tag == 'tExTen10' then
		setTextString('rBoxText',getProperty(songName));
		doTweenAlpha('tExTen11','rBoxText',1,0.05,'quartout')
		runTimer('rBoxEND',4,1)
	end
end

function onTimerCompleted(tag, loops, loopsright)
	if tag == 'Songtxt' then
		doTweenAlpha('tExTen0','rBoxText',0,0.05,'ExpoOut')
	end

	if tag == 'rBoxEND' then
		doTweenX('rMoveOutOne', 'rBoxTag', screenWidth, 1.2, 'quartout')
		doTweenX('rMoveOutTwo', 'rBox', screenWidth, 1.1, 'quartout')
		doTweenX('rMoveOutThree', 'rBoxText', screenWidth,1, 'quartout')
	end
end