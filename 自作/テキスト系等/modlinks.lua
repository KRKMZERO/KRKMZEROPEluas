----------------------------------
--modlinks Lua 
----------------------------------
--options

--MOD名をここに書いてね！
SITENAME = "Vs Herobrine Reborn | Reborn Tales"
--MODリンクをここに書いてね！
SITELINK = "https://gamebanana.com/mods/383767"

----------------------------------

function onCreatePost()--特殊なUI変更
--UI表示位置（DOWNSCROLLでも位置はかわりません）
	makeLuaText('sitename','Song:',1280,40,580); -- x y values go on the second and third 0's
	setTextAlignment("sitename", "left")
	setTextSize('sitename', 20);
	addLuaText('sitename')
	setProperty('sitename.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('sitename','2','000000')--縁取りの色です
	setObjectCamera('sitename', 'other')--hud or other
	setProperty('sitename.antialiasing', true);

	makeLuaText('sitelink','',1280,40,600); -- x y values go on the second and third 0's
	setTextAlignment("sitelink", "left")
	setTextSize('sitelink', 20);
	addLuaText('sitelink')
	setProperty('sitelink.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('sitelink','2','000000')--縁取りの色です
	setObjectCamera('sitelink', 'other')--hud or other
	setProperty('sitelink.antialiasing', true);

	makeLuaText('SongName','Song:',1280,40,620); -- x y values go on the second and third 0's
	setTextAlignment("SongName", "other")
	setTextSize('SongName', 20);
	addLuaText('SongName')
	setProperty('SongName.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('SongName','2','000000')--縁取りの色です
	setObjectCamera('SongName', 'other')--hud or other
	setProperty('SongName.antialiasing', true);

end
function onUpdate()--細かい設定
	setTextString('sitename', 'MOD:'..SITENAME);
	setTextString('sitelink', 'LINK:'..SITELINK);
	Song = getProperty(songName)
	setTextString('SongName', 'Song:'..Song);
end