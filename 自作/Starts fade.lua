
function onCreate()
	doTweenAlpha('camHUD001', 'camHUD', 0, 0.01, 'linear')
end

function onStepHit()
	if curStep == 20 then
		doTweenAlpha('camHUD002', 'camHUD', 1, 2, 'linear')
	end
end
