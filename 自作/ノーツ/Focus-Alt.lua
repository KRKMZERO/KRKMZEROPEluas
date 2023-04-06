function onMoveCamera(focus)

	if focus == 'boyfriend' then
		-- Opponent's notes
		noteTweenAlpha('normal001','0','0.5','0.15','linear')
		noteTweenAlpha('normal002','1','0.5','0.15','linear')
		noteTweenAlpha('normal003','2','0.5','0.15','linear')
		noteTweenAlpha('normal004','3','0.5','0.15','linear')
		--BFs notes
		noteTweenAlpha('normal005','4','1','0.15','linear')
		noteTweenAlpha('normal006','5','1','0.15','linear')
		noteTweenAlpha('normal007','6','1','0.15','linear')
		noteTweenAlpha('normal008','7','1','0.15','linear')

		noteTweenX('1opp1', 0, defaultOpponentStrumX0-70, 0.15, 'quartInOut')
		noteTweenX('1opp2', 1, defaultOpponentStrumX1-70, 0.15, 'quartInOut')
		noteTweenX('1opp3', 2, defaultOpponentStrumX2-70, 0.15, 'quartInOut')
		noteTweenX('1opp4', 3, defaultOpponentStrumX3-70, 0.15, 'quartInOut')

		noteTweenX('1play1', 4, 412, 0.15, 'quartInOut')
		noteTweenX('1play2', 5, 524, 0.15, 'quartInOut')
		noteTweenX('1play3', 6, 636, 0.15, 'quartInOut')
		noteTweenX('1play4', 7, 748, 0.15, 'quartInOut')

	elseif focus == 'dad' then
		-- Opponent's note
		noteTweenAlpha('alt001','0','1','0.5','linear')
		noteTweenAlpha('alt002','1','1','0.5','linear')
		noteTweenAlpha('alt003','2','1','0.5','linear')
		noteTweenAlpha('alt004','3','1','0.5','linear')
		--BFs notes
		noteTweenAlpha('alt005','4','0.5','0.5','linear')
		noteTweenAlpha('alt006','5','0.5','0.5','linear')
		noteTweenAlpha('alt007','6','0.5','0.5','linear')
		noteTweenAlpha('alt008','7','0.5','0.5','linear')

		noteTweenX('2opp1', 0, 412, 0.25, 'quartInOut')
		noteTweenX('2opp2', 1, 524, 0.15, 'quartInOut')
		noteTweenX('2opp3', 2, 636, 0.15, 'quartInOut')
		noteTweenX('2opp4', 3, 748, 0.15, 'quartInOut')

		noteTweenX('2play1', 4, defaultPlayerStrumX0+70, 0.15, 'quartInOut')
		noteTweenX('2play2', 5, defaultPlayerStrumX1+70, 0.15, 'quartInOut')
		noteTweenX('2play3', 6, defaultPlayerStrumX2+70, 0.15, 'quartInOut')
		noteTweenX('2play4', 7, defaultPlayerStrumX3+70, 0.15, 'quartInOut')--circInOut
	end
end

