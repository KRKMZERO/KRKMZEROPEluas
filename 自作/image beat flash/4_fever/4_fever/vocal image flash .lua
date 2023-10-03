local color1 = 'C24B99'
local color2 = '00FFFF'
local color3 = '12FA05'
local color4 = 'F9393F'

local objcam = 'other'

function onCreate()
	--player ,false

	makeLuaSprite('Play_right','f_left',0,0)
	addLuaSprite('Play_right',false)
	setProperty('Play_right.alpha', 0.0)
	setObjectCamera('Play_right', objcam)
	setProperty('Play_right.color', getColorFromHex('FFFFFF'))
	setProperty('Play_right.flipX', true)
	--oppment
	makeLuaSprite('opp_left','f_left',0,0)
	addLuaSprite('opp_left',false)
	setProperty('opp_left.alpha', 0.0)
	setObjectCamera('opp_left', objcam)
	setProperty('opp_left.color', getColorFromHex('FFFFFF'))

	setBlendMode('Play_right','add')
	setBlendMode('opp_left','add')--MULTIPLY


end

function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if noteData == 0 then
		cancelTween("Play_right_twn")
		setProperty("Play_right.alpha", 1)
		doTweenAlpha("Play_right_twn", "Play_right", 0, 0.5)
		setProperty('Play_right.color', getColorFromHex(color1))
	end
	if noteData == 1 then
		cancelTween("Play_right_twn")
		setProperty("Play_right.alpha", 1)
		doTweenAlpha("Play_right_twn", "Play_right", 0, 0.5)
		setProperty('Play_right.color', getColorFromHex(color2))
	end
	if noteData == 2 then
		cancelTween("Play_right_twn")
		setProperty("Play_right.alpha", 1)
		doTweenAlpha("Play_right_twn", "Play_right", 0, 0.5)
		setProperty('Play_right.color', getColorFromHex(color3))
	end
	if noteData == 3 then
		cancelTween("Play_right_twn")
		setProperty("Play_right.alpha", 1)
		doTweenAlpha("Play_right_twn", "Play_right", 0, 0.5)
		setProperty('Play_right.color', getColorFromHex(color4))
	end
end


function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if noteData == 0 then
		cancelTween("opp_left_twn")
		setProperty("opp_left.alpha", 1)
		doTweenAlpha("opp_left_twn", "opp_left", 0, 0.5)
		setProperty('opp_left.color', getColorFromHex(color1))
	end
	if noteData == 1 then
		cancelTween("opp_left_twn")
		setProperty("opp_left.alpha", 1)
		doTweenAlpha("opp_left_twn", "opp_left", 0, 0.5)
		setProperty('opp_left.color', getColorFromHex(color2))
	end
	if noteData == 2 then
		cancelTween("opp_left_twn")
		setProperty("opp_left.alpha", 1)
		doTweenAlpha("opp_left_twn", "opp_left", 0, 0.5)
		setProperty('opp_left.color', getColorFromHex(color3))
	end
	if noteData == 3 then
		cancelTween("opp_left_twn")
		setProperty("opp_left.alpha", 1)
		doTweenAlpha("opp_left_twn", "opp_left", 0, 0.5)
		setProperty('opp_left.color', getColorFromHex(color4))
	end
end
