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
	makeLuaText('LUAUITEXT','',0,ZERO_UIx,ZERO_UIy); -- x y values go on the second and third 0's
	setTextAlignment("LUAUITEXT", "left")
	setTextSize('LUAUITEXT', 20);
	addLuaText('LUAUITEXT')
	setProperty('LUAUITEXT.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('LUAUITEXT','1',BorderColor)--縁取りの色です
	
	--UIの後ろを暗くするやつ
	makeLuaSprite('UIBack','',ZERO_UIx - 10,ZERO_UIy - 10)
	makeGraphic('UIBack', 400,400 + 20, '000000')
	addLuaSprite('UIBack')
	setProperty('UIBack.alpha', 0.5)

	setObjectCamera('LUAUITEXT', 'other')
	setObjectCamera('UIBack', 'other')
	--レイヤーセット
	setObjectOrder('LUAUITEXT', 10)
	setObjectOrder('UIBack', 9)
	--アンチエイリアシング
	setProperty('SongName.antialiasing', true)
	setProperty('UIBack.antialiasing', true)
end
function onUpdate()--細かい設定
	if curStep < 10 then
		setGraphicSize('UIBack', getProperty('LUAUITEXT.width') + 20,getProperty('LUAUITEXT.height') + 20)
	end
	local health = getProperty('health')
	local RPC = getProperty('ratingPercent')
	local Acc = math.floor((RPC*100)*100)/100;
	local  timeElapsed = math.floor(getProperty('songTime')/1000)
	local  timeTotal = math.floor(getProperty('songLength')/1000)
	local timeElapsedFixed = string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60)
	local timeTotalFixed = string.format("%.2d:%.2d", timeTotal/60%60, timeTotal%60)

local LUAUI = [[
Song: ]]..getProperty(songName)..[[ 
Difficulty: ]]..getProperty('storyDifficultyText')..[[ 
Accuracy: ]]..math.floor((RPC*100)*100)/100 ..[[% 
HP: ]]..math.floor((health*50)/1).. [[% 
Score: ]]..getProperty('songScore')..[[ 
Combo: ]]..getProperty('combo')..[[ 
HITs: ]]..getProperty('songHits')..[[ 
Sick: ]]..getProperty('sicks')..[[ 
Good: ]]..getProperty('goods')..[[ 
Bad: ]]..getProperty('bads')..[[ 
Shit: ]]..getProperty('shits')..[[ 
Misses: ]]..getProperty('songMisses')..[[ 
Time: ]]..timeElapsedFixed .. [[/]] .. timeTotalFixed..[[ 
]]
	setTextString('LUAUITEXT', LUAUI)
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