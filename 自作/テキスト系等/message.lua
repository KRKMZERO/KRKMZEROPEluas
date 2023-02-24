----------------------------------
--message Lua 
----------------------------------
--options

MESSAGE1 = "creator"
MESSAGE2 = "ness"
MESSAGE3 = "-"

----------------------------------

function onCreatePost()--特殊なUI変更
--UI表示位置（DOWNSCROLLでも位置はかわりません）
	makeLuaText('message1','Song:',500,40,580); -- x y values go on the second and third 0's
	setTextAlignment("message1", "left")
	setTextSize('message1', 20);
	addLuaText('message1')
	setProperty('message1.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('message1','2','000000')--縁取りの色です
	setObjectCamera('message1', 'other')--hud or other

	makeLuaText('message2','',500,40,600); -- x y values go on the second and third 0's
	setTextAlignment("message2", "left")
	setTextSize('message2', 20);
	addLuaText('message2')
	setProperty('message2.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('message2','2','000000')--縁取りの色です
	setObjectCamera('message2', 'other')--hud or other

	makeLuaText('message3','Song:',500,40,620); -- x y values go on the second and third 0's
	setTextAlignment("message3", "other")
	setTextSize('message3', 20);
	addLuaText('message3')
	setProperty('SongName.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('message3','2','000000')--縁取りの色です
	setObjectCamera('message3', 'other')--hud or other

	setProperty('message1.antialiasing', true);
	setProperty('message2.antialiasing', true);
	setProperty('message3.antialiasing', true);
end
function onUpdate()--細かい設定
	setTextString('message1', ''..MESSAGE1);
	setTextString('message2', ''..MESSAGE2);
	setTextString('message3', ''..MESSAGE3);
end