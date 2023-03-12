----------------------------------
--simple ZERO customd UI Lua ver 2.0
----------------------------------
--options
--trueでon falseでオフ
ZERO_UIx = 10
ZERO_UIy = 300
--文字の縁取り色
BorderColor = '000000'
----------------------------------
--フォントを変えたい場合 mods/fontsに使いたいフォントをvcrに改名して入れてね！
----------------------------------
local userName = ""






function onCreatePost()--特殊なUI変更

	--UI表示位置（DOWNSCROLLでも位置はかわりません）
	makeLuaText('SongName','',500,ZERO_UIx,ZERO_UIy); -- x y values go on the second and third 0's
	setTextAlignment("SongName", "left")
	setTextSize('SongName', 20);
	addLuaText('SongName')
	setProperty('SongName.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('SongName','1',BorderColor)--縁取りの色です

	makeLuaText('player','',500,ZERO_UIx,ZERO_UIy + 20); -- x y values go on the second and third 0's
	setTextAlignment("player", "left")
	setTextSize('player', 20);
	addLuaText('player');
	setProperty('player.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('player','1',BorderColor)--縁取りの色です

	makeLuaText('misses','',500,ZERO_UIx,ZERO_UIy + 40); -- x y values go on the second and third 0's
	setTextAlignment("misses", "left")
	setTextSize('misses', 20);
	addLuaText('misses');
	setProperty('misses.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('misses','1',BorderColor)--縁取りの色です
	
	--UIの後ろを暗くするやつ
	makeLuaSprite('UIBack','',ZERO_UIx - 10,ZERO_UIy - 10)
	makeGraphic('UIBack', 350, 80, '000000')
	addLuaSprite('UIBack')
	setProperty('UIBack.alpha', 0.5)
	setObjectCamera('UIBack', 'hud')
	--レイヤーセット
	setObjectOrder('SongName', 10)
	setObjectOrder('misses', 10)
	setObjectOrder('player', 10)
	setObjectOrder('UIBack', 9)
	--アンチエイリアシング
	setProperty('SongName.antialiasing', true)
	setProperty('misses.antialiasing', true)
	setProperty('player.antialiasing', true)
	setProperty('UIBack.antialiasing', true)

	userName = (buildTarget == "windows" and os.getenv("USERNAME") or os.getenv("USER"))
end

function onUpdate()--細かい設定
	setTextString('SongName', 'Song:'..getProperty(songName));
	if getProperty('songMisses') == 0 then
		setTextString('misses', 'Misses:NoMiss');
	else
		setTextString('misses', 'Misses:'..getProperty('songMisses'));
	end
	setTextString('player', 'player:'..userName);
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