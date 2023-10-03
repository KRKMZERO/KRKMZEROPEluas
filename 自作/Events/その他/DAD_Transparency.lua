function onEvent(name,value1,value2)
	if name == "DAD_Transparency" then

		if value2 == '' then
			DADEPEED = 1
		elseif value2 == '0' then
			DADEPEED = 0.01
		else
			DADEPEED = tonumber(value2)
		end

        if value1 == '1' then
			doTweenAlpha('DADON', 'boyfriendGroup', 1, DADEPEED, 'linear')
			doTweenAlpha('DADONi', 'iconP1', 1, DADEPEED, 'linear')
        end
	
        if value1 == '0' then
			doTweenAlpha('DADOFF', 'boyfriendGroup', 0, DADEPEED, 'linear')
			doTweenAlpha('DADOFFi', 'iconP1', 0, DADEPEED, 'linear')
        end
	end
end