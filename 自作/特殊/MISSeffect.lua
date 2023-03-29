function onCreate()
	makeLuaSprite('MISSframe1','',0,0)
	makeLuaSprite('MISSframe2','',0,0)
	makeLuaSprite('MISSframe3','',0,screenHeight - 5)
	makeLuaSprite('MISSframe4','',screenWidth - 5,0)

	makeGraphic('MISSframe1', screenWidth,5, 'FF0000')
	makeGraphic('MISSframe2',5,screenHeight, 'FF0000')
	makeGraphic('MISSframe3',5,screenHeight, 'FF0000')
	makeGraphic('MISSframe4', screenWidth,5, 'FF0000')

	addLuaSprite('MISSframe1')
	addLuaSprite('MISSframe2')
	addLuaSprite('MISSframe3')
	addLuaSprite('MISSframe4')

	setProperty('MISSframe1.alpha', 0.0)
	setProperty('MISSframe2.alpha', 0.0)
	setProperty('MISSframe3.alpha', 0.0)
	setProperty('MISSframe4.alpha', 0.0)

	setObjectCamera('MISSframe1', 'other')
	setObjectCamera('MISSframe2', 'other')
	setObjectCamera('MISSframe3', 'other')
	setObjectCamera('MISSframe4', 'other')
end
--[[
screenHeight
screenWidth
]]
function noteMiss()

	setProperty('MISSframe1.alpha', 0.5)
	doTweenAlpha('MISSframe1Tween', 'MISSframe1', 0, 1, linear)

	setProperty('MISSframe2.alpha', 0.5)
	doTweenAlpha('MISSframe2Tween', 'MISSframe2', 0, 1, linear)

	setProperty('MISSframe3.alpha', 0.5)
	doTweenAlpha('MISSframe3Tween', 'MISSframe3', 0, 1, linear)

	setProperty('MISSframe4.alpha', 0.5)
	doTweenAlpha('MISSframe4Tween', 'MISSframe4', 0, 1, linear)

end