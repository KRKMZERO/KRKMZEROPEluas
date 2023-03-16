fontset = 'Exo.ttf'
function onCreatePost()--特殊なUI変更

	makeLuaSprite('image', 'ui_image', 0, 0);
	addLuaSprite('image', true);
	scaleObject('image', 1, 1);
	setObjectCamera('image','hud')
	setObjectOrder('image', 3);

	setProperty("healthBarBG.visible" , false)
	setObjectOrder("healthBarBG" , 1)
	setObjectOrder('healthBar', 2)
	setGraphicSize("healthBar", 750, 20)
	setProperty("healthBar.x", 250)
	
	setObjectOrder('iconP1', 10);
	setObjectOrder('iconP2', 10);

	setProperty('scoreTxt.alpha', 0)

	if downscroll == true then
		UIsety = 40
		setProperty('image.flipY', true)
		setProperty("healthBar.y", 55)
		setProperty("iconP1.y", 0)
		setProperty("iconP2.y", 0)
	else
		UIsety = 600
	end

	UIset1x = 75
	UIset2x = 1075
	--UI表示位置 UIset2xを参照
	makeLuaText('Score','ABC',500,UIset2x,UIsety); -- x y values go on the second and third 0's
	setTextAlignment("Score", "left")
	setTextSize('Score', 20);
	addLuaText('Score')

	makeLuaText('Miss','ABC',500,UIset2x,UIsety + 20); -- x y values go on the second and third 0's
	setTextAlignment("Miss", "left")
	setTextSize('Miss', 20);
	addLuaText('Miss')

	makeLuaText('Accuracy','ABC',500,UIset2x,UIsety +40); -- x y values go on the second and third 0's
	setTextAlignment("Accuracy", "left")
	setTextSize('Accuracy', 20);
	addLuaText('Accuracy')

	--UI表示位置 UIset1xを参照
	makeLuaText('Song','ABC',500,UIset1x,UIsety); -- x y values go on the second and third 0's
	setTextAlignment("Song", "left")
	setTextSize('Song', 20);
	addLuaText('Song')
	setProperty('Song.color', getColorFromHex('FFFF00'))

	makeLuaText('Time','ABC',500,UIset1x,UIsety + 40); -- x y values go on the second and third 0's
	setTextAlignment("Time", "left")
	setTextSize('Time', 20);
	addLuaText('Time')

	setObjectOrder('Score', 11);
	setObjectOrder('Miss', 11);
	setObjectOrder('Accuracy', 11);
	setObjectOrder('Song', 11);
	setObjectOrder('Time', 11);

	setTextFont('Score',fontset)
	setTextFont('Miss',fontset)
	setTextFont('Accuracy',fontset)
	setTextFont('Song',fontset)
	setTextFont('Time',fontset)


	--setProperty("timeBar.numDivisions", 200)
end

function onUpdate()--細かい設定
	
	RPC = getProperty('ratingPercent')
	Acc = math.floor((RPC*100)*100)/100

	setTextString('Score','Score       :'..getProperty('songScore'));
	setTextString('Miss','Miss         :'..getProperty('songMisses'));
	setTextString('Accuracy','Accuracy :'..math.floor((RPC*100)*100)/100 ..'%');

	setTextString('Song', ''..getProperty(songName))

	local  timeElapsed = math.floor(getProperty('songTime')/1000)
	local  timeTotal = math.floor(getProperty('songLength')/1000)
	local timeElapsedFixed = string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60)
	local timeTotalFixed = string.format("%.2d:%.2d", timeTotal/60%60, timeTotal%60)

	setTextString('Time', timeElapsedFixed .. ' / ' .. timeTotalFixed)

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