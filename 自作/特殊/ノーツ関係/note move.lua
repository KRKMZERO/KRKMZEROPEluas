function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteData == 0 then --left
		noteTweenY('leftNoteMove0', 4, (getProperty(defaultPlayerStrumY0))-5, 0.25, 'cubeInOut');
	else
		noteTweenY('leftNoteMove1', 4, (getProperty(defaultPlayerStrumY0)), 0.25, 'cubeInOut');
	end

	if noteData == 1 then --down
		noteTweenX('downNoteMove0', 5, (getProperty(defaultPlayerStrumX1))-5, 0.25, 'cubeInOut');
	else
		noteTweenX('downNoteMove1', 5, (getProperty(defaultPlayerStrumX1)), 0.25, 'cubeInOut');
	end

	if noteData == 2 then --up
		noteTweenX('upNoteMove0', 6, (getProperty(defaultPlayerStrumX2))+5, 0.25, 'cubeInOut');
	else
		noteTweenX('upNoteMove1', 6, (getProperty(defaultPlayerStrumX2)), 0.25, 'cubeInOut');
	end

	if noteData == 3 then --right
		noteTweenY('rightNoteMove0', 7, (getProperty(defaultPlayerStrumY3))+5, 0.25, 'cubeInOut');
	else
		noteTweenY('rightNoteMove1', 7, (getProperty(defaultPlayerStrumY3)), 0.25, 'cubeInOut');
	end
end

--←↓↑→
--noteTweenX('leftNoteMove0', 4, (getProperty(defaultPlayerStrumX0)), 0.05, cubeInOut);
--noteTweenX('downNoteMove3', 7, (getProperty(defaultPlayerStrumX3)), 0.05, cubeInOut);
--noteTweenY('upNoteMove5', 5, (getProperty(defaultPlayerStrumY1)), 0.05, cubeInOut);
--noteTweenY('rightNoteMove6', 6, (getProperty(defaultPlayerStrumY2)), 0.05, cubeInOut);