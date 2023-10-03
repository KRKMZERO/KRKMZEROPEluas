----------------------------------
--Lua ver 1.00 completeversion
--options
--trueでon falseでオフ
----------------------------------

--タイムバーを並ばせるか
local setstimeber = false

--JPsychEngineに導入する場合はtrueにしてください
local JPsychEnginemode = false
----------------------------------
--フォントを変えたい場合 mods/fontsに使いたいフォントをvcrに改名して入れてね！
----------------------------------







function onCreatePost()--特殊なUI変更

	--ゲージとアイコン関係　非表示化
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('healthicon.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('iconP1.visible', false)

	--その他非表示
	setProperty('scoreTxt.visible', false);

	--おまけ変更
	if setstimeber == false then
	 setProperty('timeBar.color', getColorFromHex('FFFFFF'))--デフォルトはFFFFFF
	 setProperty('timeBarBG.color', getColorFromHex('000000'))--デフォルトは000000
	 setProperty('timeTxt.color', getColorFromHex('F387FF'))--デフォルトはFFFFFF
	 setTextFont('timeTxt', 'pixel.otf')
	end

	--UI表示位置（DOWNSCROLLでも位置はかわりません）
	makeLuaText('SongName','Song:',500,40,40); -- x y values go on the second and third 0's
	setTextAlignment("SongName", "left")
	setTextSize('SongName', 20);
	addLuaText('SongName')

	makeLuaText('difficulty','',500,40,60); -- x y values go on the second and third 0's
	setTextAlignment("difficulty", "left")
	setTextSize('difficulty', 20);
	addLuaText('difficulty')

	makeLuaText('accuracy','',500,40,80); -- x y values go on the second and third 0's
	setTextAlignment("accuracy", "left");
	setTextSize('accuracy', 20);
	addLuaText('accuracy')

	makeLuaText('healthText', '',500,40,100);
	setTextAlignment("healthText", "left");
	setTextSize('healthText', 20);
	addLuaText('healthText')

	makeLuaText('score','',500,40,120) -- x y values go on the second and third 0's
	setTextAlignment("score", "left")
	setTextSize('score', 20)
	addLuaText('score')

	if setstimeber == true then --時間表示を並べる
	   makeLuaText('TimeText','a',500,40,140)
	   setTextAlignment('TimeText',"left")
	   setTextSize('TimeText', 20);
	   addLuaText('TimeText');
	 
	   setProperty('timeBar.visible', false)
	   setProperty('timeBarBG.visible', false)
	   setProperty('timeTxt.visible', false)
    end
 

end
function onUpdate()--細かい設定
    if JPsychEnginemode == false then
	 Song = getProperty(songName)
	 health = getProperty('health')
	 RPC = getProperty('ratingPercent')
	 Acc = math.floor((RPC*100)*100)/100;
	 setTextString('SongName', 'Song:'..Song);
	 setTextString('difficulty', 'difficulty:'..getProperty('storyDifficultyText'));
	 setTextString('accuracy', 'accuracy:'..math.floor((RPC*100)*100)/100 ..'%');
	 setTextString('score', 'score:'..getProperty('songScore'));
	 setTextString('healthText', 'HP:'..math.floor((health*50)/1).. '%')
	 setTextString('message', 'Judgements')
	  if setstimeber == true then
	     setTextString('TimeText', 'Time:'..getProperty('timeTxt.text'))
	  end
	end
	
	if JPsychEnginemode == true then
	 Song = getProperty(songName)
	 health = getProperty('health')
	 RPC = getProperty('ratingPercent')
	 Acc = math.floor((RPC*100)*100)/100;
	 setTextString('SongName', '音楽:'..Song);
	 setTextString('difficulty', '難易度:'..getProperty('storyDifficultyText'));
	 setTextString('accuracy', '精度:'..math.floor((RPC*100)*100)/100 ..'%');
	 setTextString('score', 'スコア:'..getProperty('songScore'));
	 setTextString('healthText', '体力:'..math.floor((health*50)/1).. '%')
	 setTextString('message', 'カウンター')
	  if setstimeber == true then
	     setTextString('TimeText', '時間:'..getProperty('timeTxt.text'))
	  end
	end
end