Songinfotxt = [[
Song candy
MOD by bb-panzu

Player
黒髪零
]]

function onCreate()
	makeLuaText('Songinfotxt',Songinfotxt, 1280, -305, 40)
	setTextAlignment('Songinfotxt', 'left')
	setObjectCamera('Songinfotxt', 'other')
	setTextSize('Songinfotxt', 15)
	addLuaText('Songinfotxt', true)
	
end

function onSongStart()
	doTweenX('MoveInThree', 'Songinfotxt', 10, 1, 'CircInOut')
	
	runTimer('JukeBoxWait', 3, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutThree', 'Songinfotxt', -450, 1.5, 'CircInOut')
	end
end
