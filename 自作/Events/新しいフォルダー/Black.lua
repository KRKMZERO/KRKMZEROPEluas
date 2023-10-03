function onCreate()
	makeLuaSprite('Black', '', 0, 0)
	makeGraphic('Black',screenHeight*2,screenHeight*2,'000000')
	addLuaSprite('Black', false)
	screenCenter('Black','xy')
	setObjectCamera('Black','hud')
	setProperty('Black.alpha',0)
end



Blackalpha = 0

function onEvent(name, value1, value2)--
	
	if name == "Black" and not tonumber(value1) and not tonumber(value2)then
		if Blackalpha == 0 then
			Blackalpha = 1
			doTweenAlpha('BlackTween', 'Black', 1, 1, 'linear')
		elseif Blackalpha == 1 then
			Blackalpha = 0
			doTweenAlpha('BlackTween', 'Black', 0, 1, 'linear')
		end
	elseif name == "Black" and tonumber(value1) and tonumber(value2) then
		Blackalpha = tonumber(value1)
		doTweenAlpha('BlackTween', 'Black', Blackalpha, value2, 'linear')
	end

end