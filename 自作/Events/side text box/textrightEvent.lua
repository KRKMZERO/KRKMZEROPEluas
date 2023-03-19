--easy script configs
rightTextSize = 25	--Size of the text for the Now Playing thing.
rightSubTextSize = 20 --size of the text for the Song Name.
rightTagWidth = 15	--Width of the box's tag thingy.
--easy script configs
--right right
--memo 1280×720
--actual script
function onCreate()
	--the tag at the end of the box
	makeLuaSprite('rightBoxTag', 'empty', 1285+rightTagWidth, 45)
	makeGraphic('rightBoxTag', 300+rightTagWidth, 100, '4169e1')
	setObjectCamera('rightBoxTag', 'other')
	addLuaSprite('rightBoxTag', true)

	--the box
	makeLuaSprite('rightBox', 'empty', 1285+rightTagWidth+rightTagWidth, 45)
	makeGraphic('rightBox', 300, 100, '000000')
	setObjectCamera('rightBox', 'other')
	addLuaSprite('rightBox', true)
	
	--the text for the "Now Playing" bit
	makeLuaText('rightBoxText', '' , 300, 1285+rightTagWidth, 60)
	setTextAlignment('rightBoxText', 'right')
	setObjectCamera('rightBoxText', 'other')
	setTextSize('rightBoxText', rightTextSize)
	addLuaText('rightBoxText')
	
	--text for the song name
	makeLuaText('rightBoxSubText', '' , 300, 1285+rightTagWidth, 90)
	setTextAlignment('rightBoxSubText', 'right')
	setObjectCamera('rightBoxSubText', 'other')
	setTextSize('rightBoxSubText', rightSubTextSize)
	addLuaText('rightBoxSubText')
end
--motion functions
function onEvent(name, value1, value2)
	if name == 'textrightEvent' then
		-- Inst and Vocals start playing, songPosition
		doTweenX('rightMoveInOne', 'rightBoxTag', 985-rightTagWidth, 1, 'CircInOut')
		doTweenX('rightMoveInTwo', 'rightBox', 985-rightTagWidth+rightTagWidth, 1, 'CircInOut')
		doTweenX('rightMoveInThree', 'rightBoxText', 985-rightTagWidth, 1, 'CircInOut')
		doTweenX('rightMoveInFour', 'rightBoxSubText', 985-rightTagWidth, 1, 'CircInOut')

		setTextString('rightBoxText',value1);
		setTextString('rightBoxSubText',value2);

		runTimer('rightBoxWait', 2, 1)
	end
end

function onTimerCompleted(tag, loops, loopsright)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsright = how many are remaining
	if tag == 'rightBoxWait' then
		doTweenX('rightMoveOutOne', 'rightBoxTag', 1285+rightTagWidth, 1, 'CircInOut')
		doTweenX('rightMoveOutTwo', 'rightBox', 1285+rightTagWidth+rightTagWidth, 1, 'CircInOut')
		doTweenX('rightMoveOutThree', 'rightBoxText', 1285+rightTagWidth, 1, 'CircInOut')
		doTweenX('rightMoveOutFour', 'rightBoxSubText', 1285+rightTagWidth, 1, 'CircInOut')
	end
end