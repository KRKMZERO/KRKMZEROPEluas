function onEvent(name, value1, value2)
	local ver EVENT1 = tonumber(value1)
	local ver EVENT2 = tonumber(value2)
	if name == "your Event" then
		if tonumber(value1) then
			EVENT1
		end
		if tonumber(value2) then
			EVENT2
		end
	end
end

--debugPrint('こんばんは！')