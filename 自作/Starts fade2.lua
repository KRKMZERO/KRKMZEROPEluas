
function onCreate()
	setStrumVisibilty(0,false)
	setStrumVisibilty(1,false)
	setStrumVisibilty(2,false)
	setStrumVisibilty(3,false)
	setStrumVisibilty(4,false)
	setStrumVisibilty(5,false)
	setStrumVisibilty(6,false)
	setStrumVisibilty(7,false)
end

function onStepHit()
	if curStep == 1 then
		-- Opponent's notes
		noteTweenAlpha('Stert001','0','1','2','linear')
		noteTweenAlpha('Stert002','1','1','2','linear')
		noteTweenAlpha('Stert003','2','1','2','linear')
		noteTweenAlpha('Stert004','3','1','2','linear')
		--BFs notes
		noteTweenAlpha('Stert005','4','1','1','linear')
		noteTweenAlpha('Stert006','5','1','1','linear')
		noteTweenAlpha('Stert007','6','1','1','linear')
		noteTweenAlpha('Stert008','7','1','1','linear')
	end
end
