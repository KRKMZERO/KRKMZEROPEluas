CHANNELTEXT = "黒髪零のガラクタ置き場"

function onCreatePost()
	makeLuaText('channelText','--',500,765,685); -- x y values go on the second and third 0's
	setTextAlignment("channelText", "right")--left right
	setTextSize('channelText', 20);
	addLuaText('channelText')
	setProperty('channelText.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('channelText','2','000000')--縁取りの色です
	setObjectCamera('channelText', 'other')--hud or other
	setProperty('channelText.alpha', 0.5)
	setProperty('channelText.antialiasing', true);
	setObjectOrder('channelText', 1)
end
function onUpdate()--細かい設定
	setTextString('channelText', ''..CHANNELTEXT);
end