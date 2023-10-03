----------------------------------
--options
--trueでon falseでオフ
ZERO_UIx = 5
ZERO_UIy = 620
--文字の縁取り色
BorderColor = 'FFFFFF'
--FFFFFF 000000
----------------------------------
--フォントを変えたい場合 mods/fontsに使いたいフォントをvcrに改名して入れてね！
----------------------------------
MODNAME = "原神FNFMODまとめ"


--原神FNFMODまとめ



function onCreatePost()--特殊なUI変更 or and currentModDirectory
	if getProperty(songName) == 'Toodle-Loo' then
		MODNAME = "VS Sweetheart"
	else--"原神FNFMODまとめ"
		MODNAME = currentModDirectory
	end
	--UI表示位置（DOWNSCROLLでも位置はかわりません）
	makeLuaText('ModName','',500,ZERO_UIx,ZERO_UIy +50); -- x y values go on the second and third 0's
	setTextAlignment("ModName", "left")
	setTextSize('ModName', 20);
	addLuaText('ModName');
	setProperty('ModName.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('ModName','2','000000')--縁取りの色です 1

	makeLuaText('SongName','',1270,ZERO_UIx,ZERO_UIy - 20); -- x y values go on the second and third 0's
	setTextAlignment("SongName", "left")
	setTextSize('SongName', 75);
	addLuaText('SongName')
	setProperty('SongName.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('SongName','0',BorderColor)--縁取りの色です 5

	setProperty('ModName.alpha', 0.5)
	setProperty('SongName.alpha', 0.5)

	--UIの後ろを暗くするやつ
	--[[
	makeLuaSprite('UIBack','',-50,650)
	makeGraphic('UIBack', 1500, 400, '7F7F7F')
	addLuaSprite('UIBack')
	setProperty('UIBack.alpha', 0.5)
	setProperty('UIBack.angle', 10)
	]]
	--レイヤーセット
	setObjectOrder('SongName', 11)
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

	setTextFont('ModName','vcr.ttf')
	setTextFont('SongName','vcr.ttf')
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