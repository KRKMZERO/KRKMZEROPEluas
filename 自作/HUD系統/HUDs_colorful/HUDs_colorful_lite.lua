
local usecolor = 'FF85F3'
--FF85F3 '3DA9FF'
local BorderColor = '000000'
local Bordersize = '1'

local setlayerobject = 'other' -- hud or other
---------Random option --false or true
local colorRandom = true
local singRandom = true
local BeatHitRandom = true
--If the above random option is not used, the color set in "usecolor" will be used.
randomcolor = {
	'FF0000',
	'FF00D9',
	'3A00FF',
	'00C8FF',
	'00FF4B',
	'E1FF00',
	'FF8E00',
	'FF00A7',
}





function onCreate()
	if colorRandom == true then
		usecolor = randomcolor[getRandomInt(1, #randomcolor)]
	end
end

function onCreatePost()--特殊なUI変更

	makeLuaText('ScoreTEXT','Score:',0,0,0); -- x y values go on the second and third 0's
	setTextAlignment("ScoreTEXT", "left");
	setTextSize('ScoreTEXT', 20);
	addLuaText('ScoreTEXT')
	setProperty('ScoreTEXT.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('ScoreTEXT',Bordersize,BorderColor)--縁取りの色です

	makeLuaText('Score','',0,0,0); -- x y values go on the second and third 0's
	setTextAlignment("Score", "left");
	setTextSize('Score', 20);
	addLuaText('Score')
	setTextColor('Score', usecolor)--字体の色です
	--setProperty('Score.color', getColorFromHex(RandomColorHex))--字体の色です
	setTextBorder('Score',Bordersize,BorderColor)--縁取りの色です

	makeLuaText('accuracyTEXT','Accuracy:',0,0,0); -- x y values go on the second and third 0's
	setTextAlignment("accuracyTEXT", "left");
	setTextSize('accuracyTEXT', 20);
	addLuaText('accuracyTEXT')
	setProperty('accuracyTEXT.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('accuracyTEXT',Bordersize,BorderColor)--縁取りの色です

	makeLuaText('accuracy','',0,0,0); -- x y values go on the second and third 0's
	setTextAlignment("accuracy", "left");
	setTextSize('accuracy', 20);
	addLuaText('accuracy')
	setTextColor('accuracy', usecolor)--字体の色です
	setTextBorder('accuracy',Bordersize,BorderColor)--縁取りの色です

	makeLuaText('missesTEXT','Misses:',0,0,0); -- x y values go on the second and third 0's
	setTextAlignment("missesTEXT", "left")
	setTextSize('missesTEXT', 20);
	addLuaText('missesTEXT');
	setProperty('missesTEXT.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('missesTEXT',Bordersize,BorderColor)--縁取りの色です

	makeLuaText('misses','',0,0,0); -- x y values go on the second and third 0's
	setTextAlignment("misses", "left")
	setTextSize('misses', 20);
	addLuaText('misses');
	setTextColor('misses', usecolor)--字体の色です
	setTextBorder('misses',Bordersize,BorderColor)--縁取りの色です
	------------------------------------
	makeLuaText('SongNameTEXT','Song:',0,0,20); -- x y values go on the second and third 0's
	setTextAlignment("SongNameTEXT", "left")
	setTextSize('SongNameTEXT', 20);
	addLuaText('SongNameTEXT')
	setProperty('SongNameTEXT.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('SongNameTEXT',Bordersize,BorderColor)--縁取りの色です

	makeLuaText('SongName','',0,0,20); -- x y values go on the second and third 0's
	setTextAlignment("SongName", "left")
	setTextSize('SongName', 20);
	addLuaText('SongName')
	setTextColor('SongName', usecolor)--字体の色です
	setTextBorder('SongName',Bordersize,BorderColor)--縁取りの色です

	makeLuaText('difficulty','',0,0,20); -- x y values go on the second and third 0's
	setTextAlignment("difficulty", "left")
	setTextSize('difficulty', 20);
	addLuaText('difficulty')
	setTextColor('difficulty', usecolor)--字体の色です
	setTextBorder('difficulty',Bordersize,BorderColor)--縁取りの色です

	setObjectCamera('ScoreTEXT', setlayerobject);
	setObjectCamera('Score', setlayerobject);
	setObjectCamera('accuracyTEXT', setlayerobject);
	setObjectCamera('accuracy', setlayerobject);
	setObjectCamera('missesTEXT', setlayerobject);
	setObjectCamera('misses', setlayerobject);
	setObjectCamera('SongNameTEXT', setlayerobject);
	setObjectCamera('SongName', setlayerobject);
	setObjectCamera('difficulty', setlayerobject);
end

function onUpdatePost()

	RPC = getProperty('ratingPercent')
	Acc = math.floor((RPC*100)*100)/100

	formatted_score = format_int(score)

	setTextString('Score', formatted_score);
	setTextString('accuracy', math.floor((RPC*100)*100)/100 ..'%');
	setTextString('misses',   getProperty('songMisses'));

	setTextString('SongName', songName);
	setTextString('difficulty', ' ['..difficultyName..']');
	--debugPrint(getProperty('SongNameTEXT.width'))
	setProperty('Score.x',       getProperty('ScoreTEXT.width'))
	setProperty('accuracyTEXT.x',getProperty('ScoreTEXT.width') + getProperty('Score.width'))
	setProperty('accuracy.x',    getProperty('ScoreTEXT.width') + getProperty('Score.width') + getProperty('accuracyTEXT.width'))
	setProperty('missesTEXT.x',  getProperty('ScoreTEXT.width') + getProperty('Score.width') + getProperty('accuracyTEXT.width') + getProperty('accuracy.width'))
	setProperty('misses.x',      getProperty('ScoreTEXT.width') + getProperty('Score.width') + getProperty('accuracyTEXT.width') + getProperty('accuracy.width') + getProperty('missesTEXT.width'))

	setProperty('SongName.x',    getProperty('SongNameTEXT.width'))
	setProperty('difficulty.x',  getProperty('SongNameTEXT.width') + getProperty('SongName.width'))
	
	if setlayerobject == 'other' then
		setProperty('ScoreTEXT.alpha', getProperty('camHUD.alpha'));
		setProperty('Score.alpha', getProperty('camHUD.alpha'));
		setProperty('accuracyTEXT.alpha', getProperty('camHUD.alpha'));
		setProperty('accuracy.alpha', getProperty('camHUD.alpha'));
		setProperty('missesTEXT.alpha', getProperty('camHUD.alpha'));
		setProperty('misses.alpha', getProperty('camHUD.alpha'));
		setProperty('SongNameTEXT.alpha', getProperty('camHUD.alpha'));
		setProperty('SongName.alpha', getProperty('camHUD.alpha'));
		setProperty('difficulty.alpha', getProperty('camHUD.alpha'));
	end
end

singstart = false
beatwait = true
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if BeatHitRandom == true then
		singstart = true
		beatwait = false
		runTimer('beatwaitGO',0.5)
	end
	if singRandom == true and not isSustainNote then

		usecolor = randomcolor[getRandomInt(1, #randomcolor)]

		setTextColor('Score', usecolor)--字体の色です
		setTextColor('accuracy', usecolor)--字体の色です
		setTextColor('misses', usecolor)--字体の色です
		setTextColor('SongName', usecolor)--字体の色です
		setTextColor('SongName', usecolor)--字体の色です
		setTextColor('difficulty', usecolor)--字体の色です
	end
end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if BeatHitRandom == true then
		singstart = true
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'beatwaitGO' then
		beatwait = true
	end
end
function onBeatHit()
	if singstart == true and BeatHitRandom == true and beatwait then

		usecolor = randomcolor[getRandomInt(1, #randomcolor)]

		setTextColor('Score', usecolor)--字体の色です
		setTextColor('accuracy', usecolor)--字体の色です
		setTextColor('misses', usecolor)--字体の色です
		setTextColor('SongName', usecolor)--字体の色です
		setTextColor('SongName', usecolor)--字体の色です
		setTextColor('difficulty', usecolor)--字体の色です
	end
end
function format_int(number)

	local i, j, minus, int, fraction = tostring(number):find('([-]?)(%d+)([.]?%d*)')
	-- reverse the int-string and append a comma to all blocks of 3 digits
	int = int:reverse():gsub("(%d%d%d)", "%1,")
  
	-- reverse the int-string back remove an optional comma and put the 
	-- optional minus and fractional part back
	return minus .. int:reverse():gsub("^,", "") .. fraction
end