----------------------------------
--ZERO customd UI Lua ver 2.0
----------------------------------
--options
--trueでon falseでオフ
ZERO_UIx = 40
ZERO_UIy = 40
--文字の縁取り色
BorderColor = '000000'
----------------------------------
--フォントを変えたい場合 mods/fontsに使いたいフォントをvcrに改名して入れてね！
----------------------------------







function onCreatePost()--特殊なUI変更

	--UI表示位置（DOWNSCROLLでも位置はかわりません）
	makeLuaText('SongName','',500,ZERO_UIx,ZERO_UIy); -- x y values go on the second and third 0's
	setTextAlignment("SongName", "left")
	setTextSize('SongName', 20);
	addLuaText('SongName')
	setProperty('SongName.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('SongName','1',BorderColor)--縁取りの色です

	makeLuaText('difficulty','',500,ZERO_UIx,ZERO_UIy + 20); -- x y values go on the second and third 0's
	setTextAlignment("difficulty", "left")
	setTextSize('difficulty', 20);
	addLuaText('difficulty')
	setProperty('difficulty.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('difficulty','1',BorderColor)--縁取りの色です

	makeLuaText('accuracy','',500,ZERO_UIx,ZERO_UIy + 40); -- x y values go on the second and third 0's
	setTextAlignment("accuracy", "left");
	setTextSize('accuracy', 20);
	addLuaText('accuracy')
	setProperty('accuracy.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('accuracy','1',BorderColor)--縁取りの色です

	makeLuaText('healthText', '',500,ZERO_UIx,ZERO_UIy + 60);
	setTextAlignment("healthText", "left");
	setTextSize('healthText', 20);
	addLuaText('healthText')
	setProperty('healthText.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('healthText','1',BorderColor)--縁取りの色です

	makeLuaText('score','',500,ZERO_UIx,ZERO_UIy + 80) -- x y values go on the second and third 0's
	setTextAlignment("score", "left")
	setTextSize('score', 20)
	addLuaText('score')
	setProperty('score.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('score','1',BorderColor)--縁取りの色です

	makeLuaText('Combo','',500,ZERO_UIx,ZERO_UIy + 100) -- x y values go on the second and third 0's
	setTextAlignment("Combo", "left")
	setTextSize('Combo', 20)
	addLuaText('Combo')
	setProperty('Combo.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('Combo','1',BorderColor)--縁取りの色です

	makeLuaText("message", "NOTE counter",500,ZERO_UIx,ZERO_UIy + 120);
	setTextAlignment("message", "left")
	setTextSize('message', 20);
	addLuaText("message")
	setProperty('message.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('message','1',BorderColor)--縁取りの色です

	makeLuaText("songHits",'',500,ZERO_UIx,ZERO_UIy + 140);
	setTextAlignment("songHits", "left")
	setTextSize('songHits', 20);
	addLuaText("songHits")
	setProperty('songHits.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('songHits','1',BorderColor)--縁取りの色です

	makeLuaText('sick','',500,ZERO_UIx,ZERO_UIy + 160); -- x y values go on the second and third 0's
	setTextAlignment("sick", "left")
	setTextSize('sick', 20);
	addLuaText('sick');
	setProperty('sick.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('sick','1',BorderColor)--縁取りの色です

	makeLuaText('good','',500,ZERO_UIx,ZERO_UIy + 180); -- x y values go on the second and third 0's
	setTextAlignment("good", "left")
	setTextSize('good', 20);
	addLuaText('good');
	setProperty('good.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('good','1',BorderColor)--縁取りの色です

	makeLuaText('bad','',500,ZERO_UIx,ZERO_UIy + 200); -- x y values go on the second and third 0's
	setTextAlignment("bad", "left")
	setTextSize('bad', 20);
	addLuaText('bad');
	setProperty('bad.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('bad','1',BorderColor)--縁取りの色です

	makeLuaText('shit','',500,ZERO_UIx,ZERO_UIy + 220); -- x y values go on the second and third 0's
	setTextAlignment("shit", "left")
	setTextSize('shit', 20);
	addLuaText('shit');
	setProperty('shit.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('shit','1',BorderColor)--縁取りの色です

	makeLuaText('misses','',500,ZERO_UIx,ZERO_UIy + 240); -- x y values go on the second and third 0's
	setTextAlignment("misses", "left")
	setTextSize('misses', 20);
	addLuaText('misses');
	setProperty('misses.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('misses','1',BorderColor)--縁取りの色です

	makeLuaText('TimeText','a',500,ZERO_UIx,ZERO_UIy + 260)
	setTextAlignment('TimeText',"left")
	setTextSize('TimeText', 20);
	addLuaText('TimeText');
	setProperty('TimeText.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('TimeText','1',BorderColor)--縁取りの色です
	
	--UIの後ろを暗くするやつ
	makeLuaSprite('UIBack','',ZERO_UIx - 10,ZERO_UIy - 10)
	makeGraphic('UIBack', 200,310, '000000')
	addLuaSprite('UIBack')
	setProperty('UIBack.alpha', 0.5)
	setObjectCamera('UIBack', 'hud')
	--レイヤーセット
	setObjectOrder('SongName', 10)
	setObjectOrder('difficulty', 10)
	setObjectOrder('accuracy', 10)
	setObjectOrder('healthText', 10)
	setObjectOrder('score', 10)
	setObjectOrder('Combo', 10)
	setObjectOrder('message', 10)
	setObjectOrder('songHits', 10)
	setObjectOrder('sick', 10)
	setObjectOrder('good', 10)
	setObjectOrder('bad', 10)
	setObjectOrder('shit', 10)
	setObjectOrder('misses', 10)
	setObjectOrder('TimeText', 10)
	setObjectOrder('UIBack', 9)
	--アンチエイリアシング
	setProperty('SongName.antialiasing', true)
	setProperty('difficulty.antialiasing', true)
	setProperty('accuracy.antialiasing', true)
	setProperty('healthText.antialiasing', true)
	setProperty('score.antialiasing', true)
	setProperty('Combo.antialiasing', true)
	setProperty('message.antialiasing', true)
	setProperty('songHits.antialiasing', true)
	setProperty('sick.antialiasing', true)
	setProperty('good.antialiasing', true)
	setProperty('bad.antialiasing', true)
	setProperty('shit.antialiasing', true)
	setProperty('misses.antialiasing', true)
	setProperty('TimeText.antialiasing', true)
	setProperty('UIBack.antialiasing', true)
end

function onUpdate()--細かい設定
	local health = getProperty('health')
	local RPC = getProperty('ratingPercent')
	local Acc = math.floor((RPC*100)*100)/100;
	setTextString('SongName', 'Song:'..getProperty(songName));
	setTextString('difficulty', 'Difficulty:'..getProperty('storyDifficultyText'));
	setTextString('accuracy', 'Accuracy:'..math.floor((RPC*100)*100)/100 ..'%');
	setTextString('score', 'Score:'..getProperty('songScore'));
	setTextString('sick', 'Sick:'..getProperty('sicks'));
	setTextString('good', 'Good:'..getProperty('goods'));
	setTextString('bad', 'Bad:'..getProperty('bads'));
	setTextString('shit', 'Shit:'..getProperty('shits'));
	setTextString('misses', 'Misses:'..getProperty('songMisses'));
	setTextString('healthText', 'HP:'..math.floor((health*50)/1).. '%')
	setTextString('songHits', 'HITs:'..getProperty('songHits'))
	setTextString('Combo', 'Combo:'..getProperty('combo'));

	local  timeElapsed = math.floor(getProperty('songTime')/1000)
	local  timeTotal = math.floor(getProperty('songLength')/1000)
	local timeElapsedFixed = string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60)
	local timeTotalFixed = string.format("%.2d:%.2d", timeTotal/60%60, timeTotal%60)

	setTextString('TimeText', 'Time:'..timeElapsedFixed .. '/' .. timeTotalFixed)
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