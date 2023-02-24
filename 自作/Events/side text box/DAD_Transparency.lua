function onEvent(name,value1,value2)
	if name == "DAD_Transparency" then
		doTweenAlpha('DADEvent1', 'dad', tonumber(value1), tonumber(value2), 'linear')
		doTweenAlpha('DADIEvent1', 'iconP2', tonumber(value1), tonumber(value2), 'linear')
	end
end