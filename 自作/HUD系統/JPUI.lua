----------------------------------
--Lua ver 1.00 completeversion
--options
--trueでon falseでオフ
----------------------------------

----------------------------------

function onCreatePost()--特殊なUI変更
	--その他非表示
	setProperty('scoreTxt.visible', false);

	--UI表示位置（DOWNSCROLLでも位置はかわりません）
	makeLuaText('SongName','Song:',500,0,0); -- x y values go on the second and third 0's
	setTextAlignment("SongName", "left")
	setTextSize('SongName', 12);
	addLuaText('SongName')

	makeLuaText('accuracy','',500,650,0); -- x y values go on the second and third 0's
	setTextAlignment("accuracy", "left");
	setTextSize('accuracy', 24);
	addLuaText('accuracy')

	makeLuaText('score','',500,480,0) -- x y values go on the second and third 0's
	setTextAlignment("score", "left")
	setTextSize('score', 24)
	addLuaText('score')

end
function onUpdate()--細かい設定
	 Song = getProperty(songName)
	 health = getProperty('health')
	 RPC = getProperty('ratingPercent')
	 Acc = math.floor((RPC*100)*100)/100;
	 setTextString('SongName', '音楽:'..Song);
	 setTextString('accuracy', '精度:'..math.floor((RPC*100)*100)/100 ..'%');
	 setTextString('score', '得点:'..getProperty('songScore'));
end