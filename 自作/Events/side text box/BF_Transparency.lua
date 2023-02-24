function onEvent(name,value1,value2)
	if name == "BF_Transparency" then
		doTweenAlpha('BFEvent1', 'boyfriend', tonumber(value1), tonumber(value2), 'linear')
		doTweenAlpha('BFIEvent1', 'iconP1', tonumber(value1), tonumber(value2), 'linear')
	end
end