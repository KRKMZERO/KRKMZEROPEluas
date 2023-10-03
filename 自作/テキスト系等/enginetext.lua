ENGINETEXT = "JPsychEngine"

function onCreatePost()
	makeLuaText('EngineText','--',500,765,5); -- x y values go on the second and third 0's
	setTextAlignment("EngineText", "right")--left right
	setTextSize('EngineText', 20);
	addLuaText('EngineText')
	setProperty('EngineText.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('EngineText','2','000000')--縁取りの色です
	setObjectCamera('EngineText', 'other')--hud or other
	setProperty('EngineText.alpha', 0.5)
	setProperty('EngineText.antialiasing', true);
	setObjectOrder('EngineText', 1)
end
function onUpdate()--細かい設定
	setTextString('EngineText', ''..ENGINETEXT);
end