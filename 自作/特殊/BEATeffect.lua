function onCreate()
	makeLuaSprite('BEATframe1','',0,0)
	makeLuaSprite('BEATframe2','',0,15)
	makeLuaSprite('BEATframe3','',screenWidth - 15 ,15)
	makeLuaSprite('BEATframe4','',0 ,screenHeight - 15)

	makeGraphic('BEATframe1', screenWidth,15, '0086FF')
	makeGraphic('BEATframe2',15,screenHeight - 30, '0086FF')
	makeGraphic('BEATframe3',15,screenHeight - 30, '0086FF')
	makeGraphic('BEATframe4', screenWidth,15, '0086FF')

	addLuaSprite('BEATframe1')
	addLuaSprite('BEATframe2')
	addLuaSprite('BEATframe3')
	addLuaSprite('BEATframe4')

	setProperty('BEATframe1.alpha', 0.0)
	setProperty('BEATframe2.alpha', 0.0)
	setProperty('BEATframe3.alpha', 0.0)
	setProperty('BEATframe4.alpha', 0.0)

	setObjectCamera('BEATframe1', 'other')
	setObjectCamera('BEATframe2', 'other')
	setObjectCamera('BEATframe3', 'other')
	setObjectCamera('BEATframe4', 'other')
end
--[[
screenHeight
screenWidth
]]
function onBeatHit()

	setProperty('BEATframe1.alpha', 0.75)
	doTweenAlpha('BEATframe1Tween', 'BEATframe1', 0, 0.25, linear)

	setProperty('BEATframe2.alpha', 0.75)
	doTweenAlpha('BEATframe2Tween', 'BEATframe2', 0, 0.25, linear)

	setProperty('BEATframe3.alpha', 0.75)
	doTweenAlpha('BEATframe3Tween', 'BEATframe3', 0, 0.25, linear)

	setProperty('BEATframe4.alpha', 0.75)
	doTweenAlpha('BEATframe4Tween', 'BEATframe4', 0, 0.25, linear)

end