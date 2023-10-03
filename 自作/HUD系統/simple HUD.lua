function onCreatePost()--特殊なUI変更
	makeLuaText('accuracy','',500,x,getProperty('healthBar.y') - 26); -- x y values go on the second and third 0's
	setTextAlignment("accuracy", "center");
	setTextSize('accuracy', 20);
	setTextItalic('accuracy',true);
	addLuaText('accuracy')
	screenCenter('accuracy', 'x')
	setProperty('accuracy.alpha', 1)
	setObjectOrder('accuracy',getObjectOrder('healthBar')+3)


	setProperty('accuracy.antialiasing', true)

	setProperty('scoreTxt.visible', false);
end

function onUpdate()

	RPC = getProperty('ratingPercent')
	Acc = math.floor((RPC*100)*100)/100
	setTextString('accuracy', songName..'\n\n - Score ' ..score.. ' - Accuracy '..math.floor((RPC*100)*100)/100 ..'% -');

end

function onUpdatePost(elapsed)

	setProperty('iconP1.x', screenWidth -400)
	setProperty('iconP2.x', 250)

	setProperty('iconP1.y',getProperty('healthBar.y') - 70)
	setProperty('iconP2.y',getProperty('healthBar.y') - 70)
end