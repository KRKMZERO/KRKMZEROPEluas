--Lua coding KuroKamiZERO 黒髪零#2823 
--You may borrow lua and use it with modifications. by KuroKamiZERO

function onCreatePost()
	setProperty('healthBar.alpha', 0)
	setProperty('healthBarBG.alpha', 0)
	setProperty('iconP1.alpha', 0)
	setProperty('iconP2.alpha', 0)
	if downscroll then
		setProperty('healthBar.y', 89.2 - 200)
		setProperty('healthBarBG.y',79.2 - 200)
		setProperty('iconP1.y', 8.2 - 200)
		setProperty('iconP2.y', 8.2 - 200)
		setProperty('scoreTxt.y', 10)
	else
		setProperty('healthBar.y',644.8 + 200)
		setProperty('healthBarBG.y',640.8 + 200)
		setProperty('iconP1.y',569.8 + 200)
		setProperty('iconP2.y',569.8 + 200)
		
	end
end
function onSongStart()
	if downscroll then
		doTweenY('1', 'healthBar', 89.2, 1, 'circInOut')
		doTweenY('2', 'healthBarBG', 79.2, 1, 'circInOut')
		doTweenY('3', 'iconP1', 8.2, 1, 'circInOut')
		doTweenY('4', 'iconP2', 8.2, 1, 'circInOut')
		doTweenY('5', 'scoreTxt', 115.2, 1, 'circInOut')
	else
		doTweenY('1', 'healthBar', 644.8, 1, 'circInOut')
		doTweenY('2', 'healthBarBG', 640.8, 1, 'circInOut')
		doTweenY('3', 'iconP1', 569.8, 1, 'circInOut')
		doTweenY('4', 'iconP2', 569.8, 1, 'circInOut')
	end

	doTweenAlpha('001a', 'healthBar', 1, 1, 'circInOut')
	doTweenAlpha('002a', 'healthBarBG', 1, 1, 'circInOut')
	doTweenAlpha('003a', 'iconP1', 1, 1, 'circInOut')		
	doTweenAlpha('004a', 'iconP2', 1, 1, 'circInOut')
end