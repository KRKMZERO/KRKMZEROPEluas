--custom countdown.
--custom point
local countdown_seconds = 0.50

--使いたいカウントダウン音声や画像ファイルを書いてね
local countdown_sound3 = 'intro3'
local countdown_image3 = 'C3i'
local countdown_sound2 = 'intro2'
local countdown_image2 = 'C2i'
local countdown_sound1 = 'intro1'
local countdown_image1 = 'C1i'
local countdown_soundGO = 'introGo'
local countdown_imageGO = 'CGOi'
--


















































































































































































function onCreate()

	setProperty("skipCountdown", true)

	if allowCountdown == true then
		return Function_Continue
	end
	runTimer('C3', countdown_seconds *1)
	runTimer('C2', countdown_seconds *2)
	runTimer('C1', countdown_seconds *3)
	runTimer('CGO',countdown_seconds *4)
	runTimer('Songstart',countdown_seconds *5)

end

local allowCountdown = false

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'Songstart' then
		removeLuaSprite('C3image', true)
		removeLuaSprite('C2image', true)
		removeLuaSprite('C1image', true)
		removeLuaSprite('CGOimage',true)
		startCountdown()
		allowCountdown = true
		return Function_Continue
	end
	if tag == 'C3' then
		playSound(countdown_sound3,1)
		makeLuaSprite('C3image', countdown_image3, 0, 0);
		addLuaSprite('C3image', true);
		scaleObject('C3image', 1, 1);
		setObjectCamera('C3image','other')
		doTweenAlpha('C3imageT','C3image',0,0.5,'linear')
	end
	if tag == 'C2' then
		playSound(countdown_sound2,1)
		makeLuaSprite('C2image', countdown_image2, 0, 0);
		addLuaSprite('C2image', true);
		scaleObject('C2image', 1, 1);
		setObjectCamera('C2image','other')
		doTweenAlpha('C2imageT','C2image',0,0.5,'linear')
	end
	if tag == 'C1' then
		playSound(countdown_sound1,1)
		makeLuaSprite('C1image', countdown_image1, 0, 0);
		addLuaSprite('C1image', true);
		scaleObject('C1image', 1, 1);
		setObjectCamera('C1image','other')
		doTweenAlpha('C1imageT','C1image',0,0.5,'linear')
	end
	if tag == 'CGO' then
		playSound(countdown_soundGO,1)
		makeLuaSprite('CGOimage', countdown_imageGO, 0, 0);
		addLuaSprite('CGOimage', true);
		scaleObject('CGOimage', 1, 1);
		setObjectCamera('CGOimage','other')
		doTweenAlpha('CGOimageT','CGOimage',0,0.5,'linear')
	end
end

function onStartCountdown()
	if not allowCountdown then
		allowCountdown = true
		return Function_Stop
	end
return Function_Continue
end

--if not isStoryMode then
--return Function_Continue
--function onTweenCompleted(tag)
