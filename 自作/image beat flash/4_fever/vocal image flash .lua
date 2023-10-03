local color1 = 'C24B99'
local color2 = '00FFFF'
local color3 = '12FA05'
local color4 = 'F9393F'

local objcam = 'other'

function onCreate()
	--player ,false
	makeLuaSprite('Play_left','f_left',0,0)
	addLuaSprite('Play_left',false)
	setProperty('Play_left.alpha', 0.0)
	setObjectCamera('Play_left', objcam)
	setProperty('Play_left.color', getColorFromHex(color1))

	makeLuaSprite('Play_down','f_down',0,0)
	addLuaSprite('Play_down')
	setProperty('Play_down.alpha', 0.0)
	setObjectCamera('Play_down', objcam)
	setProperty('Play_down.color', getColorFromHex(color2))

	makeLuaSprite('Play_up','f_down',0,0)
	addLuaSprite('Play_up',false)
	setProperty('Play_up.alpha', 0.0)
	setObjectCamera('Play_up', objcam)
	setProperty('Play_up.color', getColorFromHex(color3))
	setProperty('Play_up.flipY', true)

	makeLuaSprite('Play_right','f_left',0,0)
	addLuaSprite('Play_right',false)
	setProperty('Play_right.alpha', 0.0)
	setObjectCamera('Play_right', objcam)
	setProperty('Play_right.color', getColorFromHex(color4))
	setProperty('Play_right.flipX', true)
	--oppment
	makeLuaSprite('opp_left','f_left',0,0)
	addLuaSprite('opp_left',false)
	setProperty('opp_left.alpha', 0.0)
	setObjectCamera('opp_left', objcam)
	setProperty('opp_left.color', getColorFromHex(color1))

	makeLuaSprite('opp_down','f_down',0,0)
	addLuaSprite('opp_down',false)
	setProperty('opp_down.alpha', 0.0)
	setObjectCamera('opp_down', objcam)
	setProperty('opp_down.color', getColorFromHex(color2))

	makeLuaSprite('opp_up','f_down',0,0)
	addLuaSprite('opp_up',false)
	setProperty('opp_up.alpha', 0.0)
	setObjectCamera('opp_up', objcam)
	setProperty('opp_up.color', getColorFromHex(color3))
	setProperty('opp_up.flipY', true)

	makeLuaSprite('opp_right','f_left',0,0)
	addLuaSprite('opp_right',false)
	setProperty('opp_right.alpha', 0.0)
	setObjectCamera('opp_right', objcam)
	setProperty('opp_right.color', getColorFromHex(color4))
	setProperty('opp_right.flipX', true)

	setBlendMode('Play_left','add')
	setBlendMode('Play_down','add')
	setBlendMode('Play_up','add')
	setBlendMode('Play_right','add')
	oppBlend = 'add'
	setBlendMode('opp_left',oppBlend)--MULTIPLY
	setBlendMode('opp_down',oppBlend)
	setBlendMode('opp_up',oppBlend)
	setBlendMode('opp_right',oppBlend)

end

function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if noteData == 0 then
		cancelTween("Play_left_twn")
		setProperty("Play_left.alpha", 1)
		doTweenAlpha("Play_left_twn", "Play_left", 0, 0.5)
	end
	if noteData == 1 then
		cancelTween("Play_down_twn")
		setProperty("Play_down.alpha", 1)
		doTweenAlpha("Play_down_twn", "Play_down", 0, 0.5)
	end
	if noteData == 2 then
		cancelTween("Play_up_twn")
		setProperty("Play_up.alpha", 1)
		doTweenAlpha("Play_up_twn", "Play_up", 0, 0.5)
	end
	if noteData == 3 then
		cancelTween("Play_right_twn")
		setProperty("Play_right.alpha", 1)
		doTweenAlpha("Play_right_twn", "Play_right", 0, 0.5)
	end
end


function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if noteData == 0 then
		cancelTween("opp_left_twn")
		setProperty("opp_left.alpha", 1)
		doTweenAlpha("opp_left_twn", "opp_left", 0, 0.5)
	end
	if noteData == 1 then
		cancelTween("opp_down_twn")
		setProperty("opp_down.alpha", 1)
		doTweenAlpha("opp_down_twn", "opp_down", 0, 0.5)
	end
	if noteData == 2 then
		cancelTween("opp_up_twn")
		setProperty("opp_up.alpha", 1)
		doTweenAlpha("opp_up_twn", "opp_up", 0, 0.5)
	end
	if noteData == 3 then
		cancelTween("opp_right_twn")
		setProperty("opp_right.alpha", 1)
		doTweenAlpha("opp_right_twn", "opp_right", 0, 0.5)
	end
end

--[[

ADD:BlendMode
ALPHA:BlendMode
DARKEN:BlendMode
DIFFERENCE:BlendMode
ERASE:BlendMode
HARDLIGHT:BlendMode
INVERT:BlendMode
LAYER:BlendMode
LIGHTEN:BlendMode
MULTIPLY:BlendMode
NORMAL:BlendMode
OVERLAY:BlendMode
SCREEN:BlendMode
SHADER:BlendMode
SUBTRACT:BlendMode








]]