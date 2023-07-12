--動画撮影用に使ってるカットしやすくするためのluaです

wait = true
function onCreate()
	if not isStoryMode then
		makeLuaSprite('Blackoutstart','',-10,-10)
		makeGraphic('Blackoutstart', 1300, 800, '000000')
		addLuaSprite('Blackoutstart')
		setProperty('Blackoutstart.alpha', 1)

		setObjectOrder('Blackoutstart', 900);
		screenCenter('Blackoutstart', 'xy');


		makeLuaText('TEXT','press any key to start',0,0,0); -- x y values go on the second and third 0's
		setTextAlignment("TEXT", 'center');
		setTextSize('TEXT', 20);
		addLuaText('TEXT')
		screenCenter('TEXT', 'xy');
		setObjectOrder('TEXT', 901);

		makeLuaText('TEXT2','PsychEngine v0.6.3',0,0,0); -- x y values go on the second and third 0's
		setTextAlignment("TEXT2", 'center');
		setTextSize('TEX2T', 20);
		addLuaText('TEXT2')
		screenCenter('TEXT2', 'x');
		setObjectOrder('TEXT2', 902)
		setTextColor('TEXT2', '999999')
		setProperty('TEXT2.y', screenHeight - getProperty('TEXT2.height'))

		setObjectCamera('Blackoutstart', 'other')
		setObjectCamera("TEXT", 'other');
		setObjectCamera("TEXT2", 'other');

		setProperty("skipCountdown", true)

		wait = true

		if allowCountdown == true then
			return Function_Continue
		end
	end
end
OK = false
local allowCountdown = false
function onUpdate(elapsed)
	if not isStoryMode then
		if wait == true then
			if keyJustPressed('left') or keyJustPressed('down') or keyJustPressed('up') or keyJustPressed('right') or keyJustPressed('accept') or keyJustPressed('space') then
				OK = true
				wait = false
				startCountdown()

				removeLuaSprite('Blackoutstart')
				removeLuaText('TEXT')
				removeLuaText('TEXT2')

				allowCountdown = true
				return Function_Continue
			end
		end
	end
end

function onStartCountdown()
	if not isStoryMode then
			if not allowCountdown then
				allowCountdown = true
				return Function_Stop
			end
		return Function_Continue
	end
end