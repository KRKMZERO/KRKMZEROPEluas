----------------------------------
--ZERO customd UI Lua ver 2.0
----------------------------------
--options
--trueでon falseでオフ

--タイムバーを並ばせるか
local setstimeber = false

--JPsychEngineに導入する場合はtrueにしてください
local JPsychEnginemode = false

--フォント変更　デフォルト vcr.ttf pixel.otf
fontset = 'vcr.ttf'
Timefont = 'pixel.otf'

--文字の縁取り色
BorderColor = '000000'
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
	 setTextFont('timeTxt',Timefont)--使用フォントです
	end

	--UI表示位置（DOWNSCROLLでも位置はかわりません）
	makeLuaText('SongName','Song:',500,40,40); -- x y values go on the second and third 0's
	setTextAlignment("SongName", "left")
	setTextSize('SongName', 20);
	addLuaText('SongName')
	setProperty('SongName.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('SongName','1',BorderColor)--縁取りの色です
	setTextFont('SongName',fontset)--使用フォントです

	makeLuaText('difficulty','',500,40,60); -- x y values go on the second and third 0's
	setTextAlignment("difficulty", "left")
	setTextSize('difficulty', 20);
	addLuaText('difficulty')
	setProperty('difficulty.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('difficulty','1',BorderColor)--縁取りの色です
	setTextFont('difficulty',fontset)--使用フォントです

	makeLuaText('accuracy','',500,40,80); -- x y values go on the second and third 0's
	setTextAlignment("accuracy", "left");
	setTextSize('accuracy', 20);
	addLuaText('accuracy')
	setProperty('accuracy.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('accuracy','1',BorderColor)--縁取りの色です
	setTextFont('accuracy',fontset)--使用フォントです

	makeLuaText('healthText', '',500,40,100);
	setTextAlignment("healthText", "left");
	setTextSize('healthText', 20);
	addLuaText('healthText')
	setProperty('healthText.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('healthText','1',BorderColor)--縁取りの色です
	setTextFont('healthText',fontset)--使用フォントです

	makeLuaText('score','',500,40,120) -- x y values go on the second and third 0's
	setTextAlignment("score", "left")
	setTextSize('score', 20)
	addLuaText('score')
	setProperty('score.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('score','1',BorderColor)--縁取りの色です
	setTextFont('score',fontset)--使用フォントです

	makeLuaText("message", "",500,40,140);
	setTextAlignment("message", "left")
	setTextSize('message', 20);
	addLuaText("message")
	setProperty('message.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('message','1',BorderColor)--縁取りの色です
	setTextFont('message',fontset)--使用フォントです

	makeLuaText('sick','',500,40,160); -- x y values go on the second and third 0's
	setTextAlignment("sick", "left")
	setTextSize('sick', 20);
	addLuaText('sick');
	setProperty('sick.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('sick','1',BorderColor)--縁取りの色です
	setTextFont('sick',fontset)--使用フォントです

	makeLuaText('good','',500,40,180); -- x y values go on the second and third 0's
	setTextAlignment("good", "left")
	setTextSize('good', 20);
	addLuaText('good');
	setProperty('good.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('good','1',BorderColor)--縁取りの色です
	setTextFont('good',fontset)--使用フォントです

	makeLuaText('bad','',500,40,200); -- x y values go on the second and third 0's
	setTextAlignment("bad", "left")
	setTextSize('bad', 20);
	addLuaText('bad');
	setProperty('bad.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('bad','1',BorderColor)--縁取りの色です
	setTextFont('bad',fontset)--使用フォントです

	makeLuaText('shit','',500,40,220); -- x y values go on the second and third 0's
	setTextAlignment("shit", "left")
	setTextSize('shit', 20);
	addLuaText('shit');
	setProperty('shit.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('shit','1',BorderColor)--縁取りの色です
	setTextFont('shit',fontset)--使用フォントです

	makeLuaText('misses','',500,40,240); -- x y values go on the second and third 0's
	setTextAlignment("misses", "left")
	setTextSize('misses', 20);
	addLuaText('misses');
	setProperty('misses.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('misses','1',BorderColor)--縁取りの色です
	setTextFont('misses',fontset)--使用フォントです
	
	if setstimeber == true then --時間表示を並べる
	   makeLuaText('TimeText','a',500,40,260)
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
	--UIの後ろを暗くするやつ
	makeLuaSprite('UIBack','',30,35)
	makeGraphic('UIBack', 200, 245, '000000')
	addLuaSprite('UIBack')
	setProperty('UIBack.alpha', 0.5)
	setObjectCamera('UIBack', 'hud')
end
function onUpdate()--細かい設定
    if JPsychEnginemode == false then
	 Song = getProperty(songName)
	 health = getProperty('health')
	 RPC = getProperty('ratingPercent')
	 Acc = math.floor((RPC*100)*100)/100;
	 setTextString('SongName', 'Song:'..Song);
	 setTextString('difficulty', 'Difficulty:'..getProperty('storyDifficultyText'));
	 setTextString('accuracy', 'Accuracy:'..math.floor((RPC*100)*100)/100 ..'%');
	 setTextString('score', 'Score:'..getProperty('songScore'));
	 setTextString('sick', 'Sick:'..getProperty('sicks'));
	 setTextString('good', 'Good:'..getProperty('goods'));
	 setTextString('bad', 'Bad:'..getProperty('bads'));
	 setTextString('shit', 'Shit:'..getProperty('shits'));
	 setTextString('misses', 'Misses:'..getProperty('songMisses'));
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
	 setTextString('sick', 'シック:'..getProperty('sicks'));
	 setTextString('good', 'グッド:'..getProperty('goods'));
	 setTextString('bad', 'バット:'..getProperty('bads'));
	 setTextString('shit', 'シット:'..getProperty('shits'));
	 setTextString('misses', 'ミス:'..getProperty('songMisses'));
	 setTextString('healthText', '体力:'..math.floor((health*50)/1).. '%')
	 setTextString('message', 'カウンター')
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