function onCreate()
	makeLuaSprite('aBEATframe1','',0,0)
	makeLuaSprite('aBEATframe2','',0,15)
	makeLuaSprite('aBEATframe3','',screenWidth - 15 ,15)
	makeLuaSprite('aBEATframe4','',0 ,screenHeight - 15)

	makeGraphic('aBEATframe1', screenWidth,15, '0086FF')
	makeGraphic('aBEATframe2',15,screenHeight - 30, '0086FF')
	makeGraphic('aBEATframe3',15,screenHeight - 30, '0086FF')
	makeGraphic('aBEATframe4', screenWidth,15, '0086FF')

	addLuaSprite('aBEATframe1')
	addLuaSprite('aBEATframe2')
	addLuaSprite('aBEATframe3')
	addLuaSprite('aBEATframe4')

	setProperty('aBEATframe1.alpha', 0.0)
	setProperty('aBEATframe2.alpha', 0.0)
	setProperty('aBEATframe3.alpha', 0.0)
	setProperty('aBEATframe4.alpha', 0.0)

	setObjectCamera('aBEATframe1', 'other')
	setObjectCamera('aBEATframe2', 'other')
	setObjectCamera('aBEATframe3', 'other')
	setObjectCamera('aBEATframe4', 'other')
end
--[[
screenHeight
screenWidth
]]
function Beatline()
        setProperty('aBEATframe1.alpha', 0.75)
        doTweenAlpha('aBEATframe1Tween', 'aBEATframe1', 0, 0.25, linear)

        setProperty('aBEATframe2.alpha', 0.75)
        doTweenAlpha('aBEATframe2Tween', 'aBEATframe2', 0, 0.25, linear)

        setProperty('aBEATframe3.alpha', 0.75)
        doTweenAlpha('aBEATframe3Tween', 'aBEATframe3', 0, 0.25, linear)

        setProperty('aBEATframe4.alpha', 0.75)
        doTweenAlpha('aBEATframe4Tween', 'aBEATframe4', 0, 0.25, linear)
end
function onEvent(eventName, value1, value2)
    if eventName == "Add Camera Zoom" then
	Beatline()
    end
end