----------------------------------
--ZERO customed UI Lua ver 2.0
----------------------------------
--options
--trueでon falseでオフ

--タイムバーを並ばせるか
local setstimeber = false

--JPsychEngineに導入する場合はtrueにしてください
local JPsychEnginemode = true

---JPsychEngineに入れる場合、バージョンが2.0d以上の場合はtrueにしてください
local JPEfontchange = true

--オートの時にボットによる演奏によるスコアを表示させる場合はtrueにしてください
local BotScoredisplay = false

--文字の縁取り色
BorderColor = '000000'
----------------------------------
--フォントを変えたい場合 mods/fontsに使いたいフォントをvcrに改名して入れてね！
----------------------------------





function onCreate()
	BOTscore = 0
	BOTacc = 0
	AutoAcc = 0
end

function onCreatePost()--特殊なUI変更
	--フォント設定
	if JPsychEnginemode == false then
		fontset = 'vcr.ttf'
		Timefont = 'pixel.otf'
	else
		Timefont = 'GameF.ttf'
		if JPEfontchange == false then
			fontset = 'vcr.ttf'
		else
			fontset = 'GameF.ttf'
		end
	end
	

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

	--UIの後ろを暗くするやつ
	makeLuaSprite('UIBack','',30,35)
	makeGraphic('UIBack', 200, 265, '000000')
	addLuaSprite('UIBack')
	setProperty('UIBack.alpha', 0.5)
	setObjectCamera('UIBack', 'hud')
	setObjectOrder('UIBack', 35)

	--UI表示位置（DOWNSCROLLでも位置はかわりません）
	makeLuaText('SongName','Song:',500,40,40); -- x y values go on the second and third 0's
	setTextAlignment("SongName", "left")
	setTextSize('SongName', 20);
	addLuaText('SongName')
	setProperty('SongName.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('SongName','1',BorderColor)--縁取りの色です
	setTextFont('SongName',fontset)--使用フォントです
	setObjectOrder('SongName', 35)

	makeLuaText('difficulty','',500,40,60); -- x y values go on the second and third 0's
	setTextAlignment("difficulty", "left")
	setTextSize('difficulty', 20);
	addLuaText('difficulty')
	setProperty('difficulty.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('difficulty','1',BorderColor)--縁取りの色です
	setTextFont('difficulty',fontset)--使用フォントです
	setObjectOrder('difficulty', 35)

	makeLuaText('accuracy','',500,40,80); -- x y values go on the second and third 0's
	setTextAlignment("accuracy", "left");
	setTextSize('accuracy', 20);
	addLuaText('accuracy')
	setProperty('accuracy.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('accuracy','1',BorderColor)--縁取りの色です
	setTextFont('accuracy',fontset)--使用フォントです
	setObjectOrder('accuracy', 35)

	makeLuaText('healthText', '',500,40,100);
	setTextAlignment("healthText", "left");
	setTextSize('healthText', 20);
	addLuaText('healthText')
	setProperty('healthText.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('healthText','1',BorderColor)--縁取りの色です
	setTextFont('healthText',fontset)--使用フォントです
	setObjectOrder('healthText', 35)

	makeLuaText('score','',500,40,120) -- x y values go on the second and third 0's
	setTextAlignment("score", "left")
	setTextSize('score', 20)
	addLuaText('score')
	setProperty('score.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('score','1',BorderColor)--縁取りの色です
	setTextFont('score',fontset)--使用フォントです
	setObjectOrder('score', 35)

	makeLuaText("message", "",500,40,140);
	setTextAlignment("message", "left")
	setTextSize('message', 20);
	addLuaText("message")
	setProperty('message.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('message','1',BorderColor)--縁取りの色です
	setTextFont('message',fontset)--使用フォントです
	setObjectOrder('message', 35)

	makeLuaText('sick','',500,40,160); -- x y values go on the second and third 0's
	setTextAlignment("sick", "left")
	setTextSize('sick', 20);
	addLuaText('sick');
	setProperty('sick.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('sick','1',BorderColor)--縁取りの色です
	setTextFont('sick',fontset)--使用フォントです
	setObjectOrder('sick', 35)

	makeLuaText('good','',500,40,180); -- x y values go on the second and third 0's
	setTextAlignment("good", "left")
	setTextSize('good', 20);
	addLuaText('good');
	setProperty('good.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('good','1',BorderColor)--縁取りの色です
	setTextFont('good',fontset)--使用フォントです
	setObjectOrder('good', 35)

	makeLuaText('bad','',500,40,200); -- x y values go on the second and third 0's
	setTextAlignment("bad", "left")
	setTextSize('bad', 20);
	addLuaText('bad');
	setProperty('bad.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('bad','1',BorderColor)--縁取りの色です
	setTextFont('bad',fontset)--使用フォントです
	setObjectOrder('bad', 35)

	makeLuaText('shit','',500,40,220); -- x y values go on the second and third 0's
	setTextAlignment("shit", "left")
	setTextSize('shit', 20);
	addLuaText('shit');
	setProperty('shit.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('shit','1',BorderColor)--縁取りの色です
	setTextFont('shit',fontset)--使用フォントです
	setObjectOrder('shit', 35)

	makeLuaText('misses','',500,40,240); -- x y values go on the second and third 0's
	setTextAlignment("misses", "left")
	setTextSize('misses', 20);
	addLuaText('misses');
	setProperty('misses.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('misses','1',BorderColor)--縁取りの色です
	setTextFont('misses',fontset)--使用フォントです
	setObjectOrder('misses', 35)

	makeLuaText('cpuControlled','',500,40,260); -- x y values go on the second and third 0's
	setTextAlignment("cpuControlled", "left")
	setTextSize('cpuControlled', 20);
	addLuaText('cpuControlled');
	setProperty('cpuControlled.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('cpuControlled','1',BorderColor)--縁取りの色です
	setTextFont('cpuControlled',fontset)--使用フォントです
	setObjectOrder('cpuControlled', 37)
	
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
	   setObjectOrder('TimeText', 35)
	end
end

function onUpdate()--細かい設定
	--精度取得&百分率化
	Acc = math.floor((getProperty('ratingPercent')*100)*100)/100;
	--曲名取得
	Song = getProperty(songName)
	--体力取得
	HPpercent = math.floor((getProperty('health')*50)/1)
	--ジャッジ取得
	Sicks = getProperty('sicks')
	Goods = getProperty('goods')
	Bads = getProperty('bads')
	Shits = getProperty('shits')
	Misses = getProperty('songMisses')
	--Botスコア表示
	if botPlay == true then
		if BotScoredisplay == true then
			BOTscore = math.floor((getProperty('sicks')*350)+(getProperty('goods')*200)+(getProperty('bads')*100)+(getProperty('shits')*50))
		end
	end

    if JPsychEnginemode == false then
		setTextString('SongName', 'Song:'..Song);
		setTextString('difficulty', 'Difficulty:'..getProperty('storyDifficultyText'));
		if botPlay == true then
			if BotScoredisplay == true then
				setTextString('accuracy', 'Accuracy:'..AutoAcc..'%');
			else
				setTextString('accuracy', 'Accuracy:'..Acc..'%');
			end
		else
			setTextString('accuracy', 'Accuracy:'..Acc..'%');
		end
		if botPlay == true then
			if BotScoredisplay == true then
				setTextString('score', 'Score:'..BOTscore);
			else
				setTextString('score', 'Score:'..getProperty('songScore'));
			end
	 	else
			setTextString('score', 'Score:'..getProperty('songScore'));
		end
	 	setTextString('sick', 'Sick:'..Sicks);
	 	setTextString('good', 'Good:'..Goods);
	 	setTextString('bad', 'Bad:'..Bads);
	 	setTextString('shit', 'Shit:'..Shits);
	 	setTextString('misses', 'Misses:'..Misses);
	 	setTextString('healthText', 'HP:'..HPpercent.. '%')
	 	setTextString('message', 'Judgements')
	 	if botPlay == true then
			setTextString('cpuControlled', '[BOTPLAY]')
	 	end
	  	if setstimeber == true then
	     	setTextString('TimeText', 'Time:'..getProperty('timeTxt.text'))
	  	end
	end
	
	if JPsychEnginemode == true then
	 	setTextString('SongName', '音楽:'..Song);
	 	setTextString('difficulty', '難易度:'..getProperty('storyDifficultyText'));
		if botPlay == true then
			if BotScoredisplay == true then
	 			setTextString('accuracy', '精度:'..AutoAcc..'%');
			else
				setTextString('accuracy', '精度:'..Acc..'%');
			end
		else
			setTextString('accuracy', '精度:'..Acc..'%');
		end
		if botPlay == true then
			if BotScoredisplay == true then
				setTextString('score', 'スコア:'..BOTscore);
			elseif BotScoredisplay == false then
				setTextString('score', 'スコア:'..getProperty('songScore'));
			end
		else
		   setTextString('score', 'スコア:'..getProperty('songScore'));
		end

	 	setTextString('sick', 'シック:'..Sicks);
	 	setTextString('good', 'グッド:'..Goods);
	 	setTextString('bad', 'バット:'..Bads);
	 	setTextString('shit', 'シット:'..Shits);
	 	setTextString('misses', 'ミス:'..Misses);
	 	setTextString('healthText', '体力:'..HPpercent.. '%')
	 	setTextString('message', 'カウンター')
	 	if botPlay == true then
			setTextString('cpuControlled', '[オートプレイ]')
	 	end
	  	if setstimeber == true then
	   	  	setTextString('TimeText', '時間:'..getProperty('timeTxt.text'))
	  	end
	end
end

function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	--Bot精度表示
	if botPlay == true then
		if BotScoredisplay == true then
			TotalNotes = math.floor(getProperty('sicks') + getProperty('goods') + getProperty('bads') + getProperty('shits')+getProperty('songMisses'))
			BOTacc = math.floor(((getProperty('sicks')*1)+(getProperty('goods')*0.7)+(getProperty('bads')*0.4)+(getProperty('shits')*0)+(getProperty('songMisses')*0))/TotalNotes)
			AutoAcc = math.floor((BOTacc*100)*100)/100;
		end
	end
end

function noteMiss(membersIndex, noteData, noteType, isSustainNote)
	--Bot精度表示
	if botPlay == true then
		if BotScoredisplay == true then
			TotalNotes = math.floor(getProperty('sicks') + getProperty('goods') + getProperty('bads') + getProperty('shits')+getProperty('songMisses'))
			BOTacc = math.floor(((getProperty('sicks')*1)+(getProperty('goods')*0.7)+(getProperty('bads')*0.4)+(getProperty('shits')*0)+(getProperty('songMisses')*0))/TotalNotes)
			AutoAcc = math.floor((BOTacc*100)*100)/100;
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