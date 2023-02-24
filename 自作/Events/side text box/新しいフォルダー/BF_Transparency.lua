function onEvent(name,value1,value2)

	if name == "BF_Transparency" then
		if tonumber(value1) == '' and tonumber(value2) == '' then
			if getProperty('boyfriendGroup.alpha') == 1 then
				doTweenAlpha('BFEventi1', 'boyfriendGroup', 0, 0.01, 'linear')
				doTweenAlpha('BFIEventi1', 'iconP1', 0, 0.01, 'linear')
			else
				doTweenAlpha('BFEventi1', 'boyfriendGroup', 1, 0.01, 'linear')
				doTweenAlpha('BFIEventi1', 'iconP1', 1, 0.01, 'linear')
			end
		else
			doTweenAlpha('BFEvent1', 'boyfriendGroup', value1, value2, 'linear')
			doTweenAlpha('BFIEvent1', 'iconP1', value1, value2, 'linear')
		end
	end
end