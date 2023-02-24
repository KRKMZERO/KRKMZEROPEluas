function onUpdate()
	Diff = getProperty('storyDifficultyText')
	if Diff == 'Easy' then
		setProperty('healthGain',0)
		setProperty('healthLoss',0)
	end
	if Diff == 'Normal' then
		setProperty('healthGain',0.5)
		setProperty('healthLoss',0.5)
	end
	if Diff == 'hard' then
		setProperty('healthGain',1)
		setProperty('healthLoss',1)
	end
end