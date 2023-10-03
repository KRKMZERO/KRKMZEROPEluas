----------------------------------
--Lua ver 1.00 completeversion
--options
--trueでon falseでオフ
----------------------------------

--タイムバーを並ばせるか
local setstimeber = true

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
	setTextSize('SongName', 30);
	addLuaText('SongName')
	setTextFont('SongName', 'luafont.ttf')

	makeLuaText('accuracy','',500,40,70); -- x y values go on the second and third 0's
	setTextAlignment("accuracy", "left");
	setTextSize('accuracy', 30);
	addLuaText('accuracy')
	setTextFont('accuracy', 'luafont.ttf')

	makeLuaText('score','',500,40,100) -- x y values go on the second and third 0's
	setTextAlignment("score", "left")
	setTextSize('score', 30)
	addLuaText('score')
	setTextFont('score', 'luafont.ttf')

	makeLuaText('healthText', '',500,40,25);
	setTextAlignment("healthText", "left");
	setTextSize('healthText', 15);
	addLuaText('healthText')
	setTextFont('healthText','luafont.ttf')--使用フォントです

	if setstimeber == true then --時間表示を並べる
	   makeLuaText('TimeText','a',500,40,130)
	   setTextAlignment('TimeText',"left")
	   setTextSize('TimeText', 30);
	   addLuaText('TimeText');
	   setTextFont('TimeText', 'luafont.ttf')
	 
	   setProperty('timeBar.visible', false)
	   setProperty('timeBarBG.visible', false)
	   setProperty('timeTxt.visible', false)
        end
end
function onUpdate()--細かい設定
	 Song = getProperty(songName)
	 health = getProperty('health')
	 RPC = getProperty('ratingPercent')
	 Acc = math.floor((RPC*100)*100)/100;
	 setTextString('SongName', '♪:'..Song);
	 setTextString('accuracy', '％:'..math.floor((RPC*100)*100)/100 ..'%');
	 setTextString('score', '■:'..getProperty('songScore'));
	 setTextString('healthText', 'HP:'..math.floor((health*50)/1).. '%')
	  if setstimeber == true then
	     setTextString('TimeText', '〇:'..getProperty('timeTxt.text'))
	  end
end