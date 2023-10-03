function onEvent(name, value1, value2)
	if name == "default-position" then
		if value1 == '' then
			noteTweenX('dNoteMove0', 4, (getProperty(defaultPlayerStrumX0)), 0.001, cubeInOut);
			noteTweenX('dNoteMove1', 5, (getProperty(defaultPlayerStrumX1)), 0.001, cubeInOut);
			noteTweenX('dNoteMove2', 6, (getProperty(defaultPlayerStrumX2)), 0.001, cubeInOut);
			noteTweenX('dNoteMove3', 7, (getProperty(defaultPlayerStrumX3)), 0.001, cubeInOut);

			noteTweenY('dNoteMove4', 4, (getProperty(defaultPlayerStrumY0)), 0.001, cubeInOut);
			noteTweenY('dNoteMove5', 5, (getProperty(defaultPlayerStrumY1)), 0.001, cubeInOut);
			noteTweenY('dNoteMove6', 6, (getProperty(defaultPlayerStrumY2)), 0.001, cubeInOut);
			noteTweenY('dNoteMove7', 7, (getProperty(defaultPlayerStrumY3)), 0.001, cubeInOut);

			noteTweenAngle('dNoteAngle1', 4, 0, 0.001, cubeInOut);
			noteTweenAngle('dNoteAngle2', 5, 0, 0.001, cubeInOut);
			noteTweenAngle('dNoteAngle3', 6, 0, 0.001, cubeInOut);
			noteTweenAngle('dNoteAngle4', 7, 0, 0.001, cubeInOut);
			for i = 0,7 do
				setPropertyFromGroup('playerStrums', i, 'downScroll', true);
			end
		else
			noteTweenX('dNoteMove0', 4, (getProperty(defaultPlayerStrumX0)), value1, 'cubeInOut');
			noteTweenX('dNoteMove1', 5, (getProperty(defaultPlayerStrumX1)), value1, 'cubeInOut');
			noteTweenX('dNoteMove2', 6, (getProperty(defaultPlayerStrumX2)), value1, 'cubeInOut');
			noteTweenX('dNoteMove3', 7, (getProperty(defaultPlayerStrumX3)), value1, 'cubeInOut');

			noteTweenY('dNoteMove4', 4, (getProperty(defaultPlayerStrumY0)), value1, 'cubeInOut');
			noteTweenY('dNoteMove5', 5, (getProperty(defaultPlayerStrumY1)), value1, 'cubeInOut');
			noteTweenY('dNoteMove6', 6, (getProperty(defaultPlayerStrumY2)), value1, 'cubeInOut');
			noteTweenY('dNoteMove7', 7, (getProperty(defaultPlayerStrumY3)), value1, 'cubeInOut');

			noteTweenAngle('dNoteAngle1', 4, 0, value1, cubeInOut);
			noteTweenAngle('dNoteAngle2', 5, 0, value1, cubeInOut);
			noteTweenAngle('dNoteAngle3', 6, 0, value1, cubeInOut);
			noteTweenAngle('dNoteAngle4', 7, 0, value1, cubeInOut);
			for i = 0,7 do
				setPropertyFromGroup('playerStrums', i, 'downScroll', true);
			end
		end

	end
end