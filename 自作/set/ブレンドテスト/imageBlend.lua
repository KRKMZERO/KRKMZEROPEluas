function onCreate()
    makeLuaSprite('BlendImage','Bimage',0,0)
    addLuaSprite('BlendImage')
    setProperty('BlendImage.alpha', 0.5)
    setObjectCamera('BlendImage', 'other')--game hud other
	setProperty('BlendImage.color', getColorFromHex('000000'))--FFFFFF 818181
	setBlendMode('BlendImage','herdlight')--color
end
--ADD
--ALPHA
--DARKEN
--DIFFERENCE
--ERASE
--HARDLIGHT
--INVERT
--LAYER
--LIGHTEN
--MULTIPLY
--NORMAL
--OVERLAY
--SCREEN
--SHADER
--SUBTRACT