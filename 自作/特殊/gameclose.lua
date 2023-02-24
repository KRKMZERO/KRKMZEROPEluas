--[[

ゲームオーバーになったらゲームが閉じますｗ

--]]
function onTimerCompleted(tag)
	if tag == 'gameclose' then
		os.exit()
	end
end
function onGameOverStart()
	runTimer('gameclose',1,1)
end
--[[
function onTimerCompleted(tag)
function onGameOverConfirm(isNotGoingToMenu)
function onGameOver()
function onGameOverStart()
runTimer(time:1)
if sec == 10 then 


	os.exit()
end
if tag == 'gameclose' then
	runTimer('gameclose',3,1)
end


--]]