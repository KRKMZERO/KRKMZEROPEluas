function opponentNoteHit()
		-- Opponent's notes
		noteTweenAlpha('normal001','0','1','0.01','linear')
		noteTweenAlpha('normal002','1','1','0.01','linear')
		noteTweenAlpha('normal003','2','1','0.01','linear')
		noteTweenAlpha('normal004','3','1','0.01','linear')
end
function goodNoteHit()
		--BFs notes
		noteTweenAlpha('normal005','4','1','0.01','linear')
		noteTweenAlpha('normal006','5','1','0.01','linear')
		noteTweenAlpha('normal007','6','1','0.01','linear')
		noteTweenAlpha('normal008','7','1','0.01','linear')
end

function onTweenCompleted(tag)
	if tag == 'normal001' then
		-- Opponent's notes
		noteTweenAlpha('alt001','0','0.5','0.25','circInOut')
		noteTweenAlpha('alt002','1','0.5','0.25','circInOut')
		noteTweenAlpha('alt003','2','0.5','0.25','circInOut')
		noteTweenAlpha('alt004','3','0.5','0.25','circInOut')
	end
	if tag == 'normal005' then
		--BFs notes
		noteTweenAlpha('alt005','4','0.5','0.25','circInOut')
		noteTweenAlpha('alt006','5','0.5','0.25','circInOut')
		noteTweenAlpha('alt007','6','0.5','0.25','circInOut')
		noteTweenAlpha('alt008','7','0.5','0.25','circInOut')
	end
end