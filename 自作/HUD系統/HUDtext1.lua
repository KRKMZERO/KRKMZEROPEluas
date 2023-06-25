function onCreatePost()
	makeLuaText('SongText001',"- " ..getProperty(songName).." "..difficultyName.. " -",1280,100,100); -- x y values go on the second and third 0's
	setTextSize('SongText001', 25);
	addLuaText('SongText001')
	screenCenter('SongText001', 'x')
	setProperty('SongText001.y', 25)
	setObjectCamera('SongText001', 'other')--hud or other
	setProperty('SongText001.alpha', 0.5)
	setProperty('SongText001.antialiasing', true)

	makeLuaText('Text001'," ",1280,100,100); -- x y values go on the second and third 0's
	setTextSize('Text001', 25);
	addLuaText('Text001')
	screenCenter('Text001', 'x')
	setProperty('Text001.y', 0)
	setObjectCamera('Text001', 'other')--hud or other
	setProperty('Text001.alpha', 0.5)
	setProperty('Text001.antialiasing', true)

end

function onUpdate(elapsed)

	RPC = getProperty('ratingPercent')
	Acc = math.floor((RPC*100)*100)/100;

	formatted_score = format_int(score)

	if getProperty('songMisses') == 0 then
		setTextString('Text001',"- Score:" ..formatted_score.. ' Accuracy:'..math.floor((RPC*100)*100)/100 ..'% -');
	else
		setTextString('Text001',"- Score:" ..formatted_score.. ' Miss:'..getProperty('songMisses')..' Accuracy:'..math.floor((RPC*100)*100)/100 ..'% -');
	end

	setProperty('scoreTxt.antialiasing', true)
end

function format_int(number)

	local i, j, minus, int, fraction = tostring(number):find('([-]?)(%d+)([.]?%d*)')
	-- reverse the int-string and append a comma to all blocks of 3 digits
	int = int:reverse():gsub("(%d%d%d)", "%1,")
  
	-- reverse the int-string back remove an optional comma and put the 
	-- optional minus and fractional part back
	return minus .. int:reverse():gsub("^,", "") .. fraction
  end