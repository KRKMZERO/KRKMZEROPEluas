function onCreate()
	local MODCLAR = "MOD by bb-panzu"

	--makeLuaSprites
	--[[
	makeLuaSprite('Blackber1', 'empty', 0, screenHeight -100)
	makeGraphic('Blackber1', screenWidth, 40, '000000')
	setObjectCamera('Blackber1', 'other')
	addLuaSprite('Blackber1', true)
	setProperty('Blackber1.alpha',0)

	makeLuaSprite('Blackber2', 'empty', 0, screenHeight -50)
	makeGraphic('Blackber2', screenWidth, 40, '000000')
	setObjectCamera('Blackber2', 'other')
	addLuaSprite('Blackber2', true)
	setProperty('Blackber2.alpha',0)
	]]
	makeLuaSprite('Blackber1', 'sonsong', -400, screenHeight -100);
	addLuaSprite('Blackber1', true);
	scaleObject('Blackber1', 1, 1);
	setObjectCamera('Blackber1','other')
	setProperty('Blackber1.alpha',0)
	scaleObject('Blackber1', 1, 0.35);

	makeLuaSprite('Blackber2', 'sonsong', 1280, screenHeight -50);
	addLuaSprite('Blackber2', true);
	scaleObject('Blackber2', 1, 1);
	setObjectCamera('Blackber2','other')
	setProperty('Blackber2.alpha',0)
	scaleObject('Blackber2', 1, 0.35);

	setProperty('Blackber2.flipX', true)
	--texts
	makeLuaText('Luatext001',MODSONGs,screenWidth,x,screenHeight -100); -- x y values go on the second and third 0's
	setTextAlignment('Luatext001', "center")--left right CENTER
	setTextSize('Luatext001', 20);
	addLuaText('Luatext001')
	setObjectCamera('Luatext001', 'other')--hud or other
	setProperty('Luatext001.alpha', 0)
	setProperty('Luatext001.antialiasing', true);
	setProperty('Luatext001.x', -500)

	makeLuaText('Luatext002',MODCLAR,screenWidth,x,screenHeight -50); -- x y values go on the second and third 0's
	setTextAlignment('Luatext002', "center")--left right CENTER
	setTextSize('Luatext002', 20);
	addLuaText('Luatext002')
	setObjectCamera('Luatext002', 'other')--hud or other
	setProperty('Luatext002.alpha', 0)
	setProperty('Luatext002.antialiasing', true);
	setProperty('Luatext002.x', 500)
end
--640
function onUpdate(elapsed)
	setTextString('Luatext001', '♪ '..getProperty(songName));
end
function onStepHit()
	if curStep == 127 then
		--debugPrint("Almost there!")
		doTweenX('Luatext001tweenX', 'Luatext001', -100, 1, 'QuintIn')--QuintIn
		doTweenX('Luatext002tweenX', 'Luatext002', 100, 1, 'QuintIn')--QuintIn
		doTweenX('Blackber1tweenX', 'Blackber1', 240, 1, 'QuintIn')--QuintIn
		doTweenX('Blackber2tweenX', 'Blackber2', 440, 1, 'QuintIn')--QuintIn


		doTweenAlpha('Blackber1tween', 'Blackber1', 1, 1, 'QuintIn')--QuintIn
		doTweenAlpha('Blackber2tween', 'Blackber2', 1, 1, 'QuintIn')--QuintIn
		doTweenAlpha('Luatext001tween', 'Luatext001', 1, 1, 'QuintIn')--QuintIn
		doTweenAlpha('Luatext002tween', 'Luatext002', 1, 1, 'QuintIn')--QuintIn
		runTimer('nexttween',3,1)
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'nexttween' then
		doTweenX('Luatext001tweenXout', 'Luatext001', -1000, 1, 'QuintIn')--QuintIn
		doTweenX('Luatext002tweenXout', 'Luatext002', 1000, 1, 'QuintIn')--QuintIn
		doTweenX('Blackber1tweenXout', 'Blackber1', -400, 1, 'QuintIn')--QuintIn
		doTweenX('Blackber2tweenXout', 'Blackber2', 1280, 1, 'QuintIn')--QuintIn


		doTweenAlpha('Blackber1tweenout', 'Blackber1', 0, 1, 'QuintIn')--QuintIn
		doTweenAlpha('Blackber2tweenout', 'Blackber2', 0, 1, 'QuintIn')--QuintIn
		doTweenAlpha('Luatext001tweenout', 'Luatext001', 0, 1, 'QuintIn')--QuintIn
		doTweenAlpha('Luatext002tweenout', 'Luatext002', 0, 1, 'QuintIn')--QuintIn
	end
end
function onTweenCompleted(tag)
     if tag =='nexttween' then

	end
end
