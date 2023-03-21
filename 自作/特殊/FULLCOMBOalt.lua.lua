
function onCreate()
	makeLuaText('FULLCOMTXT', 'FULL COMBO!!', 1210, 'x', 'y')
	setObjectCamera('FULLCOMTXT', 'hud')
	setTextAlignment("FULLCOMTXT", "CENTER");
	screenCenter('FULLCOMTXT', 'x')
	screenCenter('FULLCOMTXT', 'y')
	setTextSize('FULLCOMTXT', 75)
	setProperty('FULLCOMTXT.alpha', 0)
	addLuaText('FULLCOMTXT')
	setProperty('FULLCOMTXT.antialiasing', true);
	setProperty("FULLCOMTXT.color", getColorFromHex("ECFF51"))
	setTextBorder('FULLCOMTXT','1','000000')

	makeLuaText('INFOTEXT','',500,-300,screenHeight *0.25); -- x y values go on the second and third 0's
	setTextAlignment("INFOTEXT", "left")
	setTextSize('INFOTEXT', 20);
	addLuaText('INFOTEXT')
	setProperty('INFOTEXT.color', getColorFromHex('FFFFFF'))--字体の色です
	setTextBorder('INFOTEXT','1','000000')--縁取りの色です

	makeLuaSprite('INFOBack','',-300,screenHeight)
	makeGraphic('INFOBack', 260,260, '000000')
	addLuaSprite('INFOBack')
	setProperty('INFOBack.alpha', 0.5)
	
	setObjectCamera('INFOBack', 'other')
	setObjectCamera('INFOTEXT', 'other')
	setObjectCamera('FULLCOMTXT', 'other')

	setObjectOrder('INFOBack',1)
	setObjectOrder('INFOTEXT',2)
	setObjectOrder('FULLCOMTXT',3)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'heytime' then
		PlayAnim('boyfriend', 'hey', true)
		setProperty('boyfriend.specialAnim', true);
		PlayAnim('gf', 'cheer', true)
		setProperty('gf.specialAnim', true);
		PlayAnim('dad', 'hey', true)
		setProperty('dad.specialAnim', true);
	end
	if tag == 'SONGendtime' then
	endSong()
	end
end

local checked = false

function onEndSong()

		if getProperty('ratingPercent') == 1 then
			setTextString('FULLCOMTXT', 'PERFECT COMBO!!');
		end
		if misses >= 1 and not checked then
			doTweenX('INFOTEXTTweenX', 'INFOTEXT', 10, 1.5, 'elasticInOut')
			doTweenX('INFOBackTweenX', 'INFOBack', 10, 1.5, 'elasticInOut')
			
			checked = true
			runTimer('SONGendtime', 4, 1)
			return Function_Stop
		elseif misses <= 0 and not checked then
			--do something
			doTweenX('INFOTEXTTweenX', 'INFOTEXT', 10, 1.5, 'elasticInOut')
			doTweenX('INFOBackTweenX', 'INFOBack', 10, 1.5, 'elasticInOut')

			checked = true
			doTweenAlpha('FULLCOMTXTTween', 'FULLCOMTXT', 1, 1, linear)
			playSound('confirmMenu', 0.9)
			runTimer('heytime', 2, 1)
			runTimer('SONGendtime', 4, 1)
			return Function_Stop
		end
	return Function_Continue
end
function onUpdate()--細かい設定
	local RPC = getProperty('ratingPercent')
	local Acc = math.floor((RPC*100)*100)/100;
	local  timeElapsed = math.floor(getProperty('songTime')/1000)
	local  timeTotal = math.floor(getProperty('songLength')/1000)
	local timeElapsedFixed = string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60)
	local timeTotalFixed = string.format("%.2d:%.2d", timeTotal/60%60, timeTotal%60)

local LUAUI = [[
RESULT
Song: ]]..getProperty(songName)..[[ 
Difficulty: ]]..getProperty('storyDifficultyText')..[[ 
Accuracy: ]]..math.floor((RPC*100)*100)/100 ..[[% 
Score: ]]..getProperty('songScore')..[[ 
Combo: ]]..getProperty('combo')..[[ 
HITs: ]]..getProperty('songHits')..[[ 
Sick: ]]..getProperty('sicks')..[[ 
Good: ]]..getProperty('goods')..[[ 
Bad: ]]..getProperty('bads')..[[ 
Shit: ]]..getProperty('shits')..[[ 
Misses: ]]..getProperty('songMisses')..[[ 
]]
	setTextString('INFOTEXT', LUAUI)
end
