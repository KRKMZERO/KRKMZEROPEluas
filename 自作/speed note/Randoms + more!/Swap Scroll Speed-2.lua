
onewait = true
function onBeatHit()
	if onewait == true then
		triggerEvent('Change Scroll Speed',1,0.25)
		onewait = false
	elseif onewait == false then
		triggerEvent('Change Scroll Speed',0.5,0.25)
		onewait = true
	end
end