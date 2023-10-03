function onEvent(name,value1,value2)
	if name == "BF_Transparency" then

		if value2 == '' then
			BFEPEED = 1
		elseif value2 == '0' then
			BFEPEED = 0.01
		else
			BFEPEED = tonumber(value2)
		end

        if value1 == '1' then
			doTweenAlpha('BFON', 'boyfriendGroup', 1, BFEPEED, 'linear')
			doTweenAlpha('BFONi', 'iconP1', 1, BFEPEED, 'linear')
        end
	
        if value1 == '0' then
			doTweenAlpha('BFOFF', 'boyfriendGroup', 0, BFEPEED, 'linear')
			doTweenAlpha('BFOFFi', 'iconP1', 0, BFEPEED, 'linear')
        end
	end
end