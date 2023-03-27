function onCreatePost()

end
Tweenspeed = 10
function onStepHit()
	if curStep == 1 then
		noteTweenX('startopp1', 0, 412, Tweenspeed, 'quartInOut')
		noteTweenX('startopp2', 1, 524, Tweenspeed, 'quartInOut')
		noteTweenX('startopp3', 2, 636, Tweenspeed, 'quartInOut')
		noteTweenX('startopp4', 3, 748, Tweenspeed, 'quartInOut')

		noteTweenX('startplay1', 4, 412, Tweenspeed, 'quartInOut')
		noteTweenX('startplay2', 5, 524, Tweenspeed, 'quartInOut')
		noteTweenX('startplay3', 6, 636, Tweenspeed, 'quartInOut')
		noteTweenX('startplay4', 7, 748, Tweenspeed, 'quartInOut')

		noteTweenAlpha('startopp1a', 0, 0.25, Tweenspeed, 'linear')
		noteTweenAlpha('startopp2a', 1, 0.25, Tweenspeed, 'linear')
		noteTweenAlpha('startopp3a', 2, 0.25, Tweenspeed, 'linear')
		noteTweenAlpha('startopp4a', 3, 0.25, Tweenspeed, 'linear')

		noteTweenAngle('startplay1an', 4, -360, Tweenspeed, 'cubeInOut');
		noteTweenAngle('startplay2an', 5, -360, Tweenspeed, 'cubeInOut');
		noteTweenAngle('startplay3an', 6, -360, Tweenspeed, 'cubeInOut');
		noteTweenAngle('startplay4an', 7, -360, Tweenspeed, 'cubeInOut');

		noteTweenAngle('startopp1an', 0, 360, Tweenspeed, 'cubeInOut');
		noteTweenAngle('startopp2an', 1, 360, Tweenspeed, 'cubeInOut');
		noteTweenAngle('startopp3an', 2, 360, Tweenspeed, 'cubeInOut');
		noteTweenAngle('startopp4an', 3, 360, Tweenspeed, 'cubeInOut');
	end
end