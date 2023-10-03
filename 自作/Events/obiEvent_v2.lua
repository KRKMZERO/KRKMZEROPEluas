--[[
特定の映画にあるあの帯です。
value1 
1 = ON 
0 = OFF
その他数字 = 帯の具合を調整できます

value2に何も書かれてないと１秒で動作を行います
エラー防止に０を記入した場合は強制的に0.01秒を行います
記入するとしっかりとその秒数動きます
]]
--360

function onCreate()
    	makeLuaSprite('upBlack', '', 0, - 360);
	makeGraphic('upBlack', screenWidth + 100, 360, '000000');
	setObjectCamera('upBlack', 'hud');--camHUD hud
	addLuaSprite('upBlack', true);

	makeLuaSprite('downBlack', '', 0, screenHeight + 80);
	makeGraphic('downBlack', screenWidth + 100, 360, '000000');
	setObjectCamera('downBlack', 'hud');
	addLuaSprite('downBlack', true);

	setObjectOrder('upBlack', 5);
	setObjectOrder('downBlack', 5);

	screenCenter('upBlack', 'x');
	screenCenter('downBlack', 'x');
end
--quartout or linear

function onEvent(name,value1,value2)
	if name == "obiEvent_v2" then
		debugPrint(name..' ',value1..' ',value2..' ')


		if value2 == '' then
			EPEED = 1
		elseif value2 == '0' then
			EPEED = 0.01
    		else
			EPEED = tonumber(value2)
		end

        if value1 == 'ON' then
         	doTweenY('upBlackONTweenY', 'upBlack', - 280, EPEED, 'quartout')
         	doTweenY('downBlackONTweenY', 'downBlack', screenHeight - 80 , EPEED, 'quartout')
		elseif value1 == 'OFF' then
			doTweenY('upBlackOFFTweenY', 'upBlack', - 360 , EPEED, 'quartout')
            doTweenY('downBlackOFFTweenY', 'downBlack', screenHeight , EPEED, 'quartout')
		elseif tonumber(value1) then
			doTweenY('upBlackOFFTweenY', 'upBlack', 0 - tonumber(value1) , EPEED, 'quartout')
            doTweenY('downBlackOFFTweenY', 'downBlack', 360 + tonumber(value1) , EPEED, 'quartout')
	   	end
	
	end
end