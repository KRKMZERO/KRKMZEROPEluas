function goodNoteHit(id, noteData, noteType, isSustainNote)
    --矢印に応じた方向に少しだけ動き戻るluaです
    if noteData == 0 then --left
        noteTweenX('leftNoteMove0', 4, defaultPlayerStrumX0 + -10, 0.25, 'cubeInOut');
    else
        noteTweenX('leftNoteMove1', 4, defaultPlayerStrumX0, 0.25, 'cubeInOut');
    end

    if noteData == 1 then --down
        noteTweenY('downNoteMove0', 5, defaultPlayerStrumY1 + 10, 0.25, 'cubeInOut');
    else
        noteTweenY('downNoteMove1', 5, defaultPlayerStrumY1, 0.25, 'cubeInOut');
    end

    if noteData == 2 then --up
        noteTweenY('upNoteMove0', 6, defaultPlayerStrumY2 + -10, 0.25, 'cubeInOut');
    else
        noteTweenY('upNoteMove1', 6, defaultPlayerStrumY2, 0.25, 'cubeInOut');
    end

    if noteData == 3 then --right
        noteTweenX('rightNoteMove0', 7, defaultPlayerStrumX3 + 10, 0.25, 'cubeInOut');
    else
        noteTweenX('rightNoteMove1', 7, defaultPlayerStrumX3, 0.25, 'cubeInOut');
    end
end

--←↓↑→
--noteTweenX('leftNoteMove0', 4, (getProperty(defaultPlayerStrumX0)), 0.05, cubeInOut);
--noteTweenX('downNoteMove3', 7, (getProperty(defaultPlayerStrumX3)), 0.05, cubeInOut);
--noteTweenY('upNoteMove5', 5, (getProperty(defaultPlayerStrumY1)), 0.05, cubeInOut);
--noteTweenY('rightNoteMove6', 6, (getProperty(defaultPlayerStrumY2)), 0.05, cubeInOut);
--not
--else