function onCreatePost()
	makeLuaText('SongText001',"- " ..getProperty(songName).. " -",500,100,100); -- x y values go on the second and third 0's
	setTextSize('SongText001', 25);
	addLuaText('SongText001')
	screenCenter('SongText001', 'x')
	setProperty('SongText001.y', 680)
	--setProperty('SongText001.color', getColorFromHex('FFFFFF'))--字体の色です
	--setTextBorder('SongText001','2','000000')--縁取りの色です
	setObjectCamera('SongText001', 'other')--hud or other
	setProperty('SongText001.alpha', 0.5)
	setProperty('SongText001.antialiasing', true)
	setObjectOrder('SongText001', 2)
end