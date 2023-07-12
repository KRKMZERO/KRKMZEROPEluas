--Lua coding KuroKamiZERO 黒髪零#2823 
--You may borrow lua and use it with modifications. by KuroKamiZERO
Tweenwait = false 
function onUpdateScore(miss)
	if downscroll then
		if Tweenwait == false then
			if getProperty('health') >= 1.9 then
				doTweenY('1', 'healthBar', 89.2 - 200, 1, 'circInOut')
				doTweenY('2', 'healthBarBG', 79.2 - 200, 1, 'circInOut')
				doTweenY('3', 'iconP1', 8.2 - 200, 1, 'circInOut')
				doTweenY('4', 'iconP2', 8.2 - 200, 1, 'circInOut')
				doTweenY('5', 'scoreTxt', 10, 1, 'circInOut')
				Tweenwait = true 
			elseif getProperty('health') < 1.9 then
				doTweenY('12', 'healthBar', 89.2 , 1, 'circInOut')
				doTweenY('22', 'healthBarBG', 79.2 , 1, 'circInOut')
				doTweenY('32', 'iconP1', 8.2, 1 , 'circInOut')
				doTweenY('42', 'iconP2', 8.2, 1 , 'circInOut')
				doTweenY('52', 'scoreTxt', 115.2 , 1, 'circInOut')
				Tweenwait = true 
			end
		end
	end
	if downscroll == false then
		if Tweenwait == false then
			if getProperty('health') >= 1.9 then
				doTweenY('1', 'healthBar', 644.8 + 200, 1, 'circInOut')
				doTweenY('2', 'healthBarBG', 640.8 + 200, 1, 'circInOut')
				doTweenY('3', 'iconP1', 569.8 + 200, 1,'circInOut')
				doTweenY('4', 'iconP2', 569.8 + 200, 1, 'circInOut')
				Tweenwait = true 
			elseif getProperty('health') < 1.9 then
				doTweenY('12', 'healthBar', 644.8 , 1, 'circInOut')
				doTweenY('22', 'healthBarBG', 640.8 , 1, 'circInOut')
				doTweenY('32', 'iconP1', 569.8, 1 , 'circInOut')
				doTweenY('42', 'iconP2', 569.8, 1 , 'circInOut')
				Tweenwait = true 
			end
		end
	end
end
function onTweenCompleted(tag)
	if tag == '1' or tag == '12' then
		Tweenwait = false
	end
end