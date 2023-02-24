----------------------------------
--ZERO customdUI simple Lua ver 2.0
--こちらは各判定のカウンターを無くした安略版です
----------------------------------
--LUA OPTION
--trueでon falseでオフ

--タイムバーを並ばせるか
local setstimeber = true

--JPsychEngineに導入する場合はtrueにしてください
local JPsychEnginemode = false

--フォント変更　デフォルト vcr.ttf pixel.otf
fontset = 'vcr.ttf'
Timefont = 'pixel.otf'

--文字の縁取り色
BorderColor = '0000FF'
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
	 setProperty('timeTxt.color', getColorFromHex('FFFFFF'))--デフォルトはFFFFFF
	 setTextBorder('timeTxt','1',BorderColor)--縁取りの色です
	 setTextFont('timeTxt',Timefont)
	end

	--UI表示位置（DOWNSCROLLでも位置はかわりません）
	makeLuaText('SongName','Song:',500,40,40); -- x y values go on the second and third 0's
	setTextAlignment("SongName", "left")
	setTextSize('SongName', 20);
	addLuaText('SongName')
	setProperty('SongName.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('SongName','1',BorderColor)--縁取りの色です
	setTextFont('SongName',fontset)--使用フォントです

	makeLuaText('difficulty','',500,240,40); -- x y values go on the second and third 0's
	setTextAlignment("difficulty", "left")
	setTextSize('difficulty', 20);
	addLuaText('difficulty')
	setProperty('difficulty.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('difficulty','1',BorderColor)--縁取りの色です
	setTextFont('difficulty',fontset)--使用フォントです

	makeLuaText('accuracy','',500,440,40); -- x y values go on the second and third 0's
	setTextAlignment("accuracy", "left");
	setTextSize('accuracy', 20);
	addLuaText('accuracy')
	setProperty('accuracy.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('accuracy','1',BorderColor)--縁取りの色です
	setTextFont('accuracy',fontset)--使用フォントです

	makeLuaText('healthText', '',500,640,40);
	setTextAlignment("healthText", "left");
	setTextSize('healthText', 20);
	addLuaText('healthText')
	setProperty('healthText.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('healthText','1',BorderColor)--縁取りの色です
	setTextFont('healthText',fontset)--使用フォントです

	makeLuaText('score','',500,840,40) -- x y values go on the second and third 0's
	setTextAlignment("score", "left")
	setTextSize('score', 20)
	addLuaText('score')
	setProperty('score.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('score','1',BorderColor)--縁取りの色です
	setTextFont('score',fontset)--使用フォントです

	makeLuaText('misses','',500,1040,40); -- x y values go on the second and third 0's
	setTextAlignment("misses", "left")
	setTextSize('misses', 20);
	addLuaText('misses');
	setProperty('misses.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('misses','1',BorderColor)--縁取りの色です
	setTextFont('misses',fontset)--使用フォントです
	
	if setstimeber == true then --時間表示を並べる
	   makeLuaText('TimeText','a',500,40,680)
	   setTextAlignment('TimeText',"left")
	   setTextSize('TimeText', 20);
	   addLuaText('TimeText');
	   setProperty('TimeText.color', getColorFromHex('FFFFFF'))--字体の色です
	   setTextBorder('TimeText','1',BorderColor)--縁取りの色です
	   setTextFont('TimeText',fontset)--使用フォントです

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
	 setTextString('difficulty', 'Ver:'..getProperty('storyDifficultyText'));
	 setTextString('accuracy', 'Accuracy:'..math.floor((RPC*100)*100)/100 ..'%');
	 setTextString('score', 'Score:'..getProperty('songScore'));
	 setTextString('healthText', 'HP:'..math.floor((health*50)/1).. '%')
	 setTextString('message', 'Judgements')
	 setTextString('misses', 'Misses:'..getProperty('songMisses'));
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
	 setTextString('misses', 'ミス:'..getProperty('songMisses'));
	  if setstimeber == true then
	     setTextString('TimeText', '時間:'..getProperty('timeTxt.text'))
	  end
	end
end

----------------------------------
--おすすめカラーコード一覧
--FFFFFF　白
--000000　黒
--FF0000　赤
--0000FF　青
--00F000　緑
--FFFF00　黄
--FFC0CB　ピンク
--F387FF　ピンクに似た別の色
--当Luaはある程度Engineのデフォルトカラーコードになっています
--
--そのほかのカラーコードはこちらへhttps://www.colordic.org/
----------------------------------
--バージョンアップ履歴
--2.0
--文字のカラーと縁取りのカラーが変更可能に
--英語表示の時頭文字を大文字に
----------------------------------