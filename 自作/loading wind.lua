local bg = 'loadingBG' -- don't touch this

local allowCountdown = false

function onStartCountdown() -- No countdown yet
    if not allowCountdown then
	    return Function_Stop
	end

	if allowCountdown then
	    return Function_Continue
	end
end

function onCreatePost() -- 疑似ローディング画面
	local loadingIMAGE = math.random(1,50)
	makeLuaSprite('loadingBG', 'loading/'..loadingIMAGE, 0, 0)
	scaleObject('loadingBG',0.5, 0.5)
	makeLuaText('loading', 'Now Loading!', 700, 3, 650)
	setTextSize('loading', 42)
	local loadingTIME = math.random(3.0,5.0)
	runTimer('fadeTimer', loadingTIME, 1)
	--setTextFont('loading', 'metro.otf')

	addLuaSprite('loadingBG', true)
	addLuaText('loading')	
	setObjectCamera('loadingBG', 'camOther')
	setObjectCamera('loading', 'camOther')
end

function onTimerCompleted(tag) -- ローディング画面の終了時
    if tag == 'fadeTimer' then
	    doTweenAlpha('delete', 'loadingBG', 0, 0.3, 'backIn')
		allowCountdown = true
		startCountdown()
		
	end
end

function onTweenCompleted(tag) 
    if tag == 'delete' then
	    removeLuaSprite('loadingBG', true)
	    removeLuaText('loading', true)
		
	end
end