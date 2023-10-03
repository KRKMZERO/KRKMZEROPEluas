--[[
特定の映画にあるあの帯です。
value1 
1 = ON 
2 = OFF

value2に何も書かれてないと１秒で動作を行います
エラー防止に０を記入した場合は強制的に0.01秒を行います
記入するとしっかりとその秒数動きます
]]


function onCreate()
    	makeLuaSprite('upBlack', '', 0, -80);
	makeGraphic('upBlack', screenWidth, 80, '000000');
	setObjectCamera('upBlack', 'hud');--camHUD hud
	addLuaSprite('upBlack', true);

	makeLuaSprite('downBlack', '', 0, screenHeight + 80);
	makeGraphic('downBlack', screenWidth, 80, '000000');
	setObjectCamera('downBlack', 'hud');
	addLuaSprite('downBlack', true);

	setObjectOrder('upBlack', 5);
	setObjectOrder('downBlack', 5);
end
--quartout or linear
function onEvent(name,value1,value2)
	if name == "obiEvent" then

		if value2 == '' then
			EPEED = 1
		elseif value2 == '0' then
			EPEED = 0.01
    		else
			EPEED = tonumber(value2)
		end

        if value1 == '1' then
         	doTweenY('upBlackONTweenY', 'upBlack', 0, EPEED, 'quartout')
         	doTweenY('downBlackONTweenY', 'downBlack', screenHeight - 80, EPEED, 'quartout')
        end
	
        if value1 == '0' then
            doTweenY('upBlackOFFTweenY', 'upBlack', -80 , EPEED, 'quartout')
            doTweenY('downBlackOFFTweenY', 'downBlack', screenHeight, EPEED, 'quartout')
        end
	end
end