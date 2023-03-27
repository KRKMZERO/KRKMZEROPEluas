function goodNoteHit()
	local SING = 'PLAY'
end
function opponentNoteHit()
	local SING = 'OPP'
end
function onUpdate(elapsed)
	if SING == 'PLAY' then
		-- Opponent's notes
		noteTweenAlpha('normal001','0','0.5','0.5','linear')
		noteTweenAlpha('normal002','1','0.5','0.5','linear')
		noteTweenAlpha('normal003','2','0.5','0.5','linear')
		noteTweenAlpha('normal004','3','0.5','0.5','linear')
		--BFs notes
		noteTweenAlpha('normal005','4','1','0.5','linear')
		noteTweenAlpha('normal006','5','1','0.5','linear')
		noteTweenAlpha('normal007','6','1','0.5','linear')
		noteTweenAlpha('normal008','7','1','0.5','linear')
	elseif SING == 'OPP' then
		-- Opponent's notes
		noteTweenAlpha('alt001','0','1','0.5','linear')
		noteTweenAlpha('alt002','1','1','0.5','linear')
		noteTweenAlpha('alt003','2','1','0.5','linear')
		noteTweenAlpha('alt004','3','1','0.5','linear')
		--BFs notes
		noteTweenAlpha('alt005','4','0.5','0.5','linear')
		noteTweenAlpha('alt006','5','0.5','0.5','linear')
		noteTweenAlpha('alt007','6','0.5','0.5','linear')
		noteTweenAlpha('alt008','7','0.5','0.5','linear')
	end
end