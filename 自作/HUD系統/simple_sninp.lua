function onCreate()
	makeLuaText('0000000001','Song:',1280,0,0); -- x y values go on the second and third 0's
	setTextAlignment("0000000001", "left")
	setTextSize('0000000001', 15);
	addLuaText('0000000001')
	--[[
	setProperty('0000000001.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('0000000001','1','')--縁取りの色です
	]]
	setTextBorder('0000000001','1.5','000000')--縁取りの色です
	setProperty('0000000001.antialiasing', true)
	setObjectCamera('0000000001', 'other')
end
function onUpdatePost(elapsed)

	RPC = getProperty('ratingPercent')
	Acc = math.floor((RPC*100)*100)/100;

	setTextString('0000000001',"Score:" ..score.. ' Miss:'..getProperty('songMisses')..' Accuracy:'..math.floor((RPC*100)*100)/100 ..'%\n'..songName..' '..getProperty('storyDifficultyText'));
end