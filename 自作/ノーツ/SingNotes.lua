
function onBeatHit()
	-- Opponent's notes
	setStrumVisibilty(0,1)
	setStrumVisibilty(1,1)
	setStrumVisibilty(2,1)
	setStrumVisibilty(3,1)
	--BFs notes
	setStrumVisibilty(4,1)
	setStrumVisibilty(5,1)
	setStrumVisibilty(6,1)
	setStrumVisibilty(7,1)
	-- Opponent's notes
	noteTweenAlpha('normal001','0','0.5','0.5','linear')
	noteTweenAlpha('normal002','1','0.5','0.5','linear')
	noteTweenAlpha('normal003','2','0.5','0.5','linear')
	noteTweenAlpha('normal004','3','0.5','0.5','linear')
	--BFs notes
	noteTweenAlpha('normal005','4','0.5','0.5','linear')
	noteTweenAlpha('normal006','5','0.5','0.5','linear')
	noteTweenAlpha('normal007','6','0.5','0.5','linear')
	noteTweenAlpha('normal008','7','0.5','0.5','linear')
end
