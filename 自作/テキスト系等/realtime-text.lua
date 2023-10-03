function onCreatePost()
	makeLuaText('realtimeText001'," ",500,100,100); -- x y values go on the second and third 0's
	setTextSize('realtimeText001', 25);
	addLuaText('realtimeText001')
	screenCenter('realtimeText001', 'x')
	setProperty('realtimeText001.y', 680)--680
	setObjectCamera('realtimeText001', 'other')--hud or other
	setProperty('realtimeText001.alpha', 0.5)
	setProperty('realtimeText001.antialiasing', true)
	setObjectOrder('realtimeText001', 2)
end
function onUpdate(elapsed)
	setTextString('realtimeText001', "- "..os.date("%Y/%m/%d %H:%M:%S").." -");
end