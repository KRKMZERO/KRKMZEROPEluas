----------------------------------
--challengedd UI Lua
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

--UI SETS? hud or other
UISET = 'other'
----------------------------------
--フォントを変えたい場合 mods/fontsに使いたいフォントをvcrに改名して入れてね！
----------------------------------





function onCreatePost()--特殊なUI変更

	--強制Middle scroll
	if not middleScroll then
        	setPropertyFromGroup('opponentStrums', 0, 'x', -5000);
        	setPropertyFromGroup('opponentStrums', 1, 'x', -5000);
        	setPropertyFromGroup('opponentStrums', 2, 'x', -5000);
        	setPropertyFromGroup('opponentStrums', 3, 'x', -5000);
 
        	setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 320);
        	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 320);
        	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 320);
        	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 320);
	end
	--ゲージとアイコン関係　非表示化
	--setProperty('healthBar.visible', false)
	--setProperty('healthBarBG.visible', false)
	--setProperty('healthicon.visible', false)
	--setProperty('iconP2.visible', false)
	--setProperty('iconP1.visible', false)

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
	makeLuaText('SongName','Song:',500,20,40); -- x y values go on the second and third 0's
	setTextAlignment("SongName", "left")
	setTextSize('SongName', 40);
	addLuaText('SongName')
	setProperty('SongName.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('SongName','1',BorderColor)--縁取りの色です
	setTextFont('SongName',fontset)--使用フォントです
	setObjectCamera('SongName', UISET)

	makeLuaText('difficulty','',500,20,80); -- x y values go on the second and third 0's
	setTextAlignment("difficulty", "left")
	setTextSize('difficulty', 40);
	addLuaText('difficulty')
	setProperty('difficulty.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('difficulty','1',BorderColor)--縁取りの色です
	setTextFont('difficulty',fontset)--使用フォントです
	setObjectCamera('difficulty', UISET)

	makeLuaText('accuracy','',500,20,120); -- x y values go on the second and third 0's
	setTextAlignment("accuracy", "left");
	setTextSize('accuracy', 40);
	addLuaText('accuracy')
	setProperty('accuracy.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('accuracy','1',BorderColor)--縁取りの色です
	setTextFont('accuracy',fontset)--使用フォントです
	setObjectCamera('accuracy', UISET)

	makeLuaText('healthText', '',500,20,160);
	setTextAlignment("healthText", "left");
	setTextSize('healthText', 40);
	addLuaText('healthText')
	setProperty('healthText.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('healthText','1',BorderColor)--縁取りの色です
	setTextFont('healthText',fontset)--使用フォントです
	setObjectCamera('healthText', UISET)

	makeLuaText('score','',500,20,200) -- x y values go on the second and third 0's
	setTextAlignment("score", "left")
	setTextSize('score', 40)
	addLuaText('score')
	setProperty('score.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('score','1',BorderColor)--縁取りの色です
	setTextFont('score',fontset)--使用フォントです
	setObjectCamera('score', UISET)

	makeLuaText("message", "",500,20,240);
	setTextAlignment("message", "left")
	setTextSize('message', 40);
	addLuaText("message")
	setProperty('message.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('message','1',BorderColor)--縁取りの色です
	setTextFont('message',fontset)--使用フォントです
	setObjectCamera('message', UISET)

	makeLuaText('sick','',500,20,280); -- x y values go on the second and third 0's
	setTextAlignment("sick", "left")
	setTextSize('sick', 40);
	addLuaText('sick');
	setProperty('sick.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('sick','1',BorderColor)--縁取りの色です
	setTextFont('sick',fontset)--使用フォントです
	setObjectCamera('sick', UISET)

	makeLuaText('good','',500,20,320); -- x y values go on the second and third 0's
	setTextAlignment("good", "left")
	setTextSize('good', 40);
	addLuaText('good');
	setProperty('good.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('good','1',BorderColor)--縁取りの色です
	setTextFont('good',fontset)--使用フォントです
	setObjectCamera('good', UISET)

	makeLuaText('bad','',500,20,360); -- x y values go on the second and third 0's
	setTextAlignment("bad", "left")
	setTextSize('bad', 40);
	addLuaText('bad');
	setProperty('bad.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('bad','1',BorderColor)--縁取りの色です
	setTextFont('bad',fontset)--使用フォントです
	setObjectCamera('bad', UISET)

	makeLuaText('shit','',500,20,400); -- x y values go on the second and third 0's
	setTextAlignment("shit", "left")
	setTextSize('shit', 40);
	addLuaText('shit');
	setProperty('shit.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('shit','1',BorderColor)--縁取りの色です
	setTextFont('shit',fontset)--使用フォントです
	setObjectCamera('shit', UISET)

	makeLuaText('misses','',500,20,440); -- x y values go on the second and third 0's
	setTextAlignment("misses", "left")
	setTextSize('misses', 40);
	addLuaText('misses');
	setProperty('misses.color', getColorFromHex('FF0000'))--字体の色です
	setTextBorder('misses','1','FFFFFF')--縁取りの色です
	setTextFont('misses',fontset)--使用フォントです
	setObjectCamera('misses', UISET)
	
	if setstimeber == true then --時間表示を並べる
	   makeLuaText('TimeText','a',500,20,480)
	   setTextAlignment('TimeText',"left")
	   setTextSize('TimeText', 40);
	   addLuaText('TimeText');
	   setProperty('TimeText.color', getColorFromHex('4169e1'))--字体の色です
	   setTextBorder('TimeText','1','FFFFFF')--縁取りの色です
	   setTextFont('TimeText',fontset)--使用フォントです
	   setObjectCamera('TimeText', UISET)
	 
	   setProperty('timeBar.visible', false)
	   setProperty('timeBarBG.visible', false)
	   setProperty('timeTxt.visible', false)
	end
	--UIの後ろを暗くするやつ
	makeLuaSprite('UIBack','',0,0)
	makeGraphic('UIBack', 400, 750, '000000')
	addLuaSprite('UIBack')
	setProperty('UIBack.alpha', 0.5)
	setObjectCamera('UIBack', UISET)

	makeLuaSprite('UIBack2','',870,0)
	makeGraphic('UIBack2', 450, 750, '000000')
	addLuaSprite('UIBack2')
	setProperty('UIBack2.alpha', 0.5)
	setObjectCamera('UIBack2', UISET)

	makeLuaSprite('beatline1','',400,0)
	makeGraphic('beatline1', 3, 750, '4169e1')--000000
	addLuaSprite('beatline1')
	setProperty('beatline1.alpha', 0.5)
	setObjectCamera('beatline1', UISET)

	makeLuaSprite('beatline2','',867,0)
	makeGraphic('beatline2', 3, 750, '4169e1')--000000
	addLuaSprite('beatline2')
	setProperty('beatline2.alpha', 0.5)
	setObjectCamera('beatline2', UISET)

	setProperty('SongName.antialiasing', true);
	setProperty('difficulty.antialiasing', true);
	setProperty('accuracy.antialiasing', true);
	setProperty('healthText.antialiasing', true);
	setProperty('score.antialiasing', true);
	setProperty('message.antialiasing', true);
	setProperty('sick.antialiasing', true);
	setProperty('good.antialiasing', true);
	setProperty('bad.antialiasing', true);
	setProperty('shit.antialiasing', true);
	setProperty('misses.antialiasing', true);
	setProperty('TimeText.antialiasing', true);

	
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
function onUpdatePost()
	setProperty('iconP1.x', 850)
	setProperty('iconP2.x', 250)

	setProperty('iconP1.y', 600)
	setProperty('iconP2.y', 600)

	setObjectCamera('iconP1', UISET)
	setObjectCamera('iconP2', UISET)

	doTweenAngle('ids','healthBar', 90, 0.1, linear)
	setProperty('healthBar.x', 630)
	setProperty('healthBar.y', 325)
	setObjectCamera('healthBar', UISET)
	setObjectCamera('healthBarBG', UISET)
end
function onStartCountdown()
	setProperty('health', 2)
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