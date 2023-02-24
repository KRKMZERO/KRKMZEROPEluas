function onEvent(name, value1, value2)--xmlにAnimations差分が無いと動きません
	if name == "Image Animation" then
		makeAnimatedLuaSprite('imageAni', value1, 200, -200);
		addAnimationByPrefix('imageAni', 'Animations', 'Animations', 24, true);
		addLuaSprite('imageAni', true);
		doTweenColor('hello', 'imageAni', 'FFFFFFFF', 0.5, 'quartIn');
		setObjectCamera('imageAni', 'other');
		runTimer('wait', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'image', 0, 0.3, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('image', true);
	end
end