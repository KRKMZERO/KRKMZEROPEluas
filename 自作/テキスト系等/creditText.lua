CREDITTEXT = "Game Over Song by RayJams  https://gamebanana.com/sounds/63258    chart by KRKMZERO"

function onCreatePost()
	makeLuaSprite('creditber','',0,0)
	makeGraphic('creditber', 1280, 40, '000000')
	addLuaSprite('creditber')
	setProperty('creditber.alpha', 0.5)
	setObjectCamera('creditber', 'other')

	makeLuaText('creditText','--',1280,5,0)
	setTextSize('creditText', 20);
	addLuaText('creditText')
	setTextAlignment("creditText", "left")
	setObjectCamera('creditText','other')

	setObjectOrder('creditber', 100);
	setObjectOrder('creditText', 101);
end
function onUpdate()--細かい設定
	setTextString('creditText', ''..CREDITTEXT);
end