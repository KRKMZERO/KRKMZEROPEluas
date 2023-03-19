--easy script configs
leftTextSize = 25	--Size of the text for the Now Playing thing.
leftSubTextSize = 20 --size of the text for the Song Name.
leftTagWidth = 15	--Width of the box's tag thingy.
--easy script configs
--left right
--memo 1280×720
--actual script
function onCreate()
	--the tag at the end of the box
	makeLuaSprite('leftBoxTag', 'empty', -305-leftTagWidth, 45)
	makeGraphic('leftBoxTag', 300+leftTagWidth, 100, '4169e1')
	setObjectCamera('leftBoxTag', 'other')
	addLuaSprite('leftBoxTag', true)

	--the box
	makeLuaSprite('leftBox', 'empty', -305-leftTagWidth, 45)
	makeGraphic('leftBox', 300, 100, '000000')
	setObjectCamera('leftBox', 'other')
	addLuaSprite('leftBox', true)
	
	--the text for the "Now Playing" bit
	makeLuaText('leftBoxText', '' , 300, -305-leftTagWidth, 60)
	setTextAlignment('leftBoxText', 'left')
	setObjectCamera('leftBoxText', 'other')
	setTextSize('leftBoxText', leftTextSize)
	addLuaText('leftBoxText')
	
	--text for the song name
	makeLuaText('leftBoxSubText', '' , 300, -305-leftTagWidth, 90)
	setTextAlignment('leftBoxSubText', 'left')
	setObjectCamera('leftBoxSubText', 'other')
	setTextSize('leftBoxSubText', leftSubTextSize)
	addLuaText('leftBoxSubText')

end
--motion functions
function onEvent(name, value1, value2)
	if name == 'textleftEvent' then
		-- Inst and Vocals start playing, songPosition
		doTweenX('leftMoveInOne', 'leftBoxTag', 0, 1, 'CircInOut')
		doTweenX('leftMoveInTwo', 'leftBox', 0, 1, 'CircInOut')
		doTweenX('leftMoveInThree', 'leftBoxText', 0, 1, 'CircInOut')
		doTweenX('leftMoveInFour', 'leftBoxSubText', 0, 1, 'CircInOut')

		setTextString('leftBoxText',value1);
		setTextString('leftBoxSubText',value2);

		runTimer('leftBoxWait', 2, 1)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if tag == 'leftBoxWait' then
		doTweenX('leftMoveOutOne', 'leftBoxTag', -450, 1, 'CircInOut')
		doTweenX('leftMoveOutTwo', 'leftBox', -450, 1, 'CircInOut')
		doTweenX('leftMoveOutThree', 'leftBoxText', -450, 1, 'CircInOut')
		doTweenX('leftMoveOutFour', 'leftBoxSubText', -450, 1, 'CircInOut')
	end
end