
function onGameOverStart()

	makeLuaText('GameoverTEXT','Enter or space key RETRY\nBack Space or Esc to Back',1280,0,200); -- x y values go on the second and third 0's
	setTextAlignment("GameoverTEXT", 'center')
	setTextSize('GameoverTEXT', 20);
	setProperty('GameoverTEXT.alpha', 0);
	screenCenter('GameoverTEXT', 'x')
	setProperty('GameoverTEXT.y', 600)
	addLuaText('GameoverTEXT')
	setProperty('GameoverTEXT.color', getColorFromHex('FFFFFF'))--字体の色です
	setObjectCamera('GameoverTEXT', 'other')
	setObjectOrder('GameoverTEXT', 1)
	setProperty('GameoverTEXT.antialiasing', true)

	doTweenAlpha('hanpuku1','GameoverTEXT',1,2,'circInOut')
	
end
function onTweenCompleted(tag)
	if tag == 'hanpuku1' then
		doTweenAlpha('hanpuku2','GameoverTEXT',0,2,'circInOut')
	end
	if tag == 'hanpuku2' then
		doTweenAlpha('hanpuku1','GameoverTEXT',1,2,'circInOut')
	end
end
function onGameOverConfirm(isNotGoingToMenu)
	cancelTween('hanpuku1')
	cancelTween('hanpuku2')
	doTweenAlpha('hanpukuend','GameoverTEXT',0,2,'circInOut')
end
--doTweenAlpha