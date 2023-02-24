DEMOTEXT = "School funkin DEMO"

function onCreatePost()
	makeLuaText('DemoText','--',500,10,10); -- x y values go on the second and third 0's
	setTextAlignment("DemoText", "left")--left right
	setTextSize('DemoText', 20);
	addLuaText('DemoText')
	setProperty('DemoText.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('DemoText','2','000000')--縁取りの色です
	setObjectCamera('DemoText', 'other')--hud or other
	setProperty('DemoText.alpha', 0.5)
	setProperty('DemoText.antialiasing', true);
	setObjectOrder('DemoText', 1)
end
function onUpdate()--細かい設定
	setTextString('DemoText', ''..DEMOTEXT);
end