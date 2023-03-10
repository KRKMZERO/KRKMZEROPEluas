function onCreate()
		-- Opponent's notes
		noteTweenAlpha('start001','0','0.5','0.01','linear')
		noteTweenAlpha('start002','1','0.5','0.01','linear')
		noteTweenAlpha('start003','2','0.5','0.01','linear')
		noteTweenAlpha('start004','3','0.5','0.01','linear')
		--BFs notes
		noteTweenAlpha('start005','4','0.5','0.01','linear')
		noteTweenAlpha('start006','5','0.5','0.01','linear')
		noteTweenAlpha('start007','6','0.5','0.01','linear')
		noteTweenAlpha('start008','7','0.5','0.01','linear')
end
function onBeatHit()
	if curBeat % 2 == 0 then
		-- Opponent's notes
		noteTweenAlpha('normal001','0','1','0.01','linear')
		noteTweenAlpha('normal002','1','1','0.01','linear')
		noteTweenAlpha('normal003','2','1','0.01','linear')
		noteTweenAlpha('normal004','3','1','0.01','linear')
		--BFs notes
		noteTweenAlpha('normal005','4','1','0.01','linear')
		noteTweenAlpha('normal006','5','1','0.01','linear')
		noteTweenAlpha('normal007','6','1','0.01','linear')
		noteTweenAlpha('normal008','7','1','0.01','linear')
	else
		-- Opponent's notes
		noteTweenAlpha('alt001','0','0.5','0.01','linear')
		noteTweenAlpha('alt002','1','0.5','0.01','linear')
		noteTweenAlpha('alt003','2','0.5','0.01','linear')
		noteTweenAlpha('alt004','3','0.5','0.01','linear')
		--BFs notes
		noteTweenAlpha('alt005','4','0.5','0.01','linear')
		noteTweenAlpha('alt006','5','0.5','0.01','linear')
		noteTweenAlpha('alt007','6','0.5','0.01','linear')
		noteTweenAlpha('alt008','7','0.5','0.01','linear')
	end
end
