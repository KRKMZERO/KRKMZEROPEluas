----------------------------------
--simple ZERO customd UI Lua ver 2.0
----------------------------------
--options
--trueでon falseでオフ
ZERO_UIx = 5
ZERO_UIy = 600
--文字の縁取り色
BorderColor = '000000'
----------------------------------
--フォントを変えたい場合 mods/fontsに使いたいフォントをvcrに改名して入れてね！
----------------------------------
MODNAME = "Spooky's Saturday Scare"






function onCreatePost()--特殊なUI変更

	--UI表示位置（DOWNSCROLLでも位置はかわりません）
	makeLuaText('ModName','',500,ZERO_UIx,ZERO_UIy); -- x y values go on the second and third 0's
	setTextAlignment("ModName", "left")
	setTextSize('ModName', 20);
	addLuaText('ModName');
	setProperty('ModName.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('ModName','1',BorderColor)--縁取りの色です

	makeLuaText('SongName','',1270,ZERO_UIx,ZERO_UIy + 20); -- x y values go on the second and third 0's
	setTextAlignment("SongName", "left")
	setTextSize('SongName', 75);
	addLuaText('SongName')
	setProperty('SongName.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('SongName','5',BorderColor)--縁取りの色です

	--UIの後ろを暗くするやつ
	--makeLuaSprite('UIBack','',-50,650)
	--makeGraphic('UIBack', 1500, 400, '7F7F7F')
	--addLuaSprite('UIBack')
	--setProperty('UIBack.alpha', 0.5)
	--setProperty('UIBack.angle', 10)
	--レイヤーセット
	setObjectOrder('SongName', 10)
	setObjectOrder('misses', 10)
	--setObjectOrder('UIBack', 9)
	--オブジェクトセット
	setObjectCamera('SongName','other')
	setObjectCamera('ModName','other')
	--setObjectCamera('UIBack', 'other')
	--アンチエイリアシング
	setProperty('SongName.antialiasing', true)
	setProperty('misses.antialiasing', true)
	--setProperty('UIBack.antialiasing', true)
end

function onUpdate()--細かい設定
	setTextString('SongName', getProperty(songName));
	setTextString('ModName',MODNAME );
end
--setTextString('SongName', 'Song:'..getProperty(songName));
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