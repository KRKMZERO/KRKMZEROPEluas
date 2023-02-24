----------------------------------------------------OPTIONS----------------------------------------------------


---DIALOGUE TYPE AND STUFF---
local daDialogueType = ''					--'end' for a dialogue at the end of the song, anything else for normal dialogue

canSkip = true				--if the dialogue can be skipped with ESC

doSmallCutscene = true			--(only for normal textboxes)
onlyOneTime = false			--make it so the dialogue only appears one time in the song even if you restart the song (only for normal textboxes)
onlyForStoryMode = false

BG = true			--if the textbox has a background

noAntialiasing = false		--change this if your textbox and characters are pixelated

textboxOpen = 'anim'			--change how the textbox appears. 'fade' for fade in, 'anim' for animation, anything else for no animation



---TEXT---
txtPos = {100, 475, 1100}		--{x, y, textWidth}
textColor = 'ffffff'
textBorderColor = '000000'
textBorderSize = 2

textHasShadow = true		--if you want the text to have a shadow (looks cooler)
shadowColor = '000000'
shadowDistanceX = 3
shadowDistanceY = 3



---TALK CONFIGURATION---
textWaitTimer = 0.03			--how much time to wait for the next letter/number to appear
talkWaitTimer = 0.05			--same as the other one but for the sound instead (so it sounds a bit slower or something)
stopAtPunctuation = true		--make the text wait a little bit if a there's a punctuation mark



---DIALOGUE SOUND---
clickSound = 'clickText'
music = 'breakfast'			--'' for no music (you can play music from the 'music' or 'sounds' folders)
musicLoops = true

talkVolume = 0.8
musicVolume = 0.6
clickVolume = 0.5



---CHARACTERS---

characters = {


	----------character 1----------
	{
		name = 'bf',
		image = 'characters/BOYFRIEND',
		position = {
			770, 
			170
		},
		animations = {
			{
				name = 'idle',
				anim = 'BF idle dance',
				offsets = {
					0,
					60
				},
				fps = 24,
				loops = true,
				flipX = false
			},
			{
				name = 'hey',
				anim = 'BF HEY!!',
				offsets = {
					0,
					65
				},
				fps = 24,
				loops = false,
				flipX = false
			},
		},
		scale = 0.8,
		no_antialiasing = false,
		alpha = 1,
		inactive_alpha = 0.5
	},


	----------character 2----------
	{
		name = 'pico',
		image = 'characters/Pico_FNF_assetss',
		position = {
			170,
			140
		},
		animations = {
			{
				name = 'idle',
				anim = 'Pico Idle Dance',
				offsets = {
					100,
					60
				},
				fps = 24,
				loops = true,
				flipX = true
			},
			{
				name = 'hey',
				anim = 'pico Up note0',
				offsets = {
					100,
					70
				},
				fps = 24,
				loops = false,
				flipX = true
			},
		},
		scale = 0.8,
		no_antialiasing = false,
		alpha = 1,
		inactive_alpha = 0.5
	},


	----------character 3----------
	{
		name = 'gf',
		image = 'characters/GF_assets',
		position = {
			350,
			140
		},
		animations = {
			{
				name = 'idle',
				anim = 'GF Cheer',
				offsets = {
					50,
					100
				},
				fps = 24,
				loops = false,
				flipX = false
			},
			{
				name = 'hey',
				anim = 'GF Cheer',
				offsets = {
					50,
					100
				},
				fps = 24,
				loops = false,
				flipX = false
			},
		},
		scale = 0.8,
		no_antialiasing = false,
		alpha = 1,
		inactive_alpha = 0
	},

}



---DIALOGUE BOX---

dialogueBox = {

	{
		name = 'normal',
		image = 'speech_bubble',
		position = {
			50, 
			375
		},
		animations = {
			{
				name = 'open',		--the open animation has to exist if textboxOpen is 'anim'
				anim = 'Speech Bubble Normal Open',
				offsets = {
					0,
					0
				},
				fps = 24,
				loops = false,
				flipX = false
			},
			{
				name = 'normal',
				anim = 'speech bubble normal',
				offsets = {
					0,
					0
				},
				fps = 24,
				loops = true,
				flipX = false
			},
			{
				name = 'normal_flipped',
				anim = 'speech bubble normal',
				offsets = {
					0,
					0
				},
				fps = 24,
				loops = true,
				flipX = true
			},
			{
				name = 'middle',
				anim = 'speech bubble middle',
				offsets = {
					0,
					0
				},
				fps = 24,
				loops = true,
				flipX = false
			},
		},
		scale = 1,
		no_antialiasing = false,
		alpha = 1,
	},
	
}

--I will make the characters and dialogue configurations into different files because this is a lot of text lol



---DIALOGUE---

--NOTE: For the font you also need to add the extension (example: 'pixel.otf') and if you want the default font use '' or nil

--bgImage is the image that is going to be used for the background (only if BG is enabled at the top of the options) ['' or nil for white transparent background]
--startSound is for dialogues with voice acting and stuff like that (a sound that starts at the beginning of each page)

dialogue = {

	--page 1
	{	
		character = 'bf', 
		anim = 'idle', 
		dialogueAnim = 'normal',
		
		text = "キャラクター1のテスト", 
		font = '', 
		textSize = 40,
		
		talkSound = 'dialogue'
	},

	--page 2
	{	
		character = 'bf', 
		anim = 'hey', 
		dialogueAnim = 'normal',
		
		text = "キャラクター1のテスト(サウンド付き)", 
		font = '', 
		textSize = 40,
		
		talkSound = 'dialogue', 
		startSound = 'secretSound'
	},

	--page 3
	{	
		character = 'pico', 
		anim = 'idle', 
		dialogueAnim = 'normal_flipped',
		
		text = "キャラクター2のテスト", 
		font = '', 
		textSize = 30,
		
		talkSound = 'dialogue'
	},

	--page 4
	{	
		character = 'gf', 
		anim = 'idle', 
		dialogueAnim = 'middle',
		
		text = "背景付きのキャラクター3のテスト", 
		font = '', 
		textSize = 30,
		
		talkSound = 'dialogue', 
		
		bgImage = 'funkay',
		bgPos = {-200, -200},
		bgScale = 0.8,
		
	},

	--page 5
	{	
		character = 'all', 
		anim = 'hey', 
		dialogueAnim = 'middle',
		
		text = "全員でのテスト", 
		font = '', 
		textSize = 40,
		
		talkSound = 'dialogue'
	},

}






----------------------------------------------------CODE & STUFF----------------------------------------------------

--Don't edit anything here if you don't know what you are doing

local finished = {start = false, _end = false}
local inDialogue = false
local page = 1
local completeTxt = ''
local cutText = ''
local txtNum = 0

function createTextboxStuff()

	makeLuaSprite('doofBG', '', -500, -300);
	luaSpriteMakeGraphic('doofBG', getPropertyFromClass('flixel.FlxG', 'width') * 2, getPropertyFromClass('flixel.FlxG', 'height') * 2, 'ffffff')
	setProperty('doofBG.alpha', 0)
	setObjectCamera('doofBG', 'other')
	addLuaSprite('doofBG', true)



	for i = 1, #characters do

		makeAnimatedLuaSprite('portrait'..i, characters[i]["image"], characters[i]["position"][1], characters[i]["position"][2]);
		for ii = 1, #characters[i]["animations"] do
			addAnimationByPrefix('portrait'..i, characters[i]["animations"][ii]["name"], characters[i]["animations"][ii]["anim"], characters[i]["animations"][ii]["fps"], characters[i]["animations"][ii]["loops"])
		end
		setObjectCamera('portrait'..i, 'other')
		
		setProperty('portrait'..i..'.scale.x', characters[i]["scale"])
		setProperty('portrait'..i..'.scale.y', characters[i]["scale"])
		updateHitbox('portrait'..i)
		setProperty('portrait'..i..'.alpha', 0)
		setProperty('portrait'..i..'.antialiasing', not characters[i]["no_antialiasing"])
		setProperty('portrait'..i..'.flipX', characters[i]["animations"][1]["flipX"])
		
		addLuaSprite('portrait'..i, true)

		if characters[i]["image"] == nil then
			setProperty('portrait'..i..'.visible', false)
		end

		objectPlayAnimation('portrait'..i, characters[i]["animations"][1]["name"], true)
		
		setProperty('portrait'..i..'.offset.x', characters[i]["animations"][1]["offsets"][1])
		setProperty('portrait'..i..'.offset.y', characters[i]["animations"][1]["offsets"][2])

	end



	makeAnimatedLuaSprite('doof', dialogueBox[1]["image"], dialogueBox[1]["position"][1], dialogueBox[1]["position"][2]);
	for i = 1, #dialogueBox[1]["animations"] do
		addAnimationByPrefix('doof', dialogueBox[1]["animations"][i]["name"], dialogueBox[1]["animations"][i]["anim"], dialogueBox[1]["animations"][i]["fps"], dialogueBox[1]["animations"][i]["loops"])
	end
	setObjectCamera('doof', 'other')
	setProperty('doof.scale.x', dialogueBox[1]["scale"])
	setProperty('doof.scale.y', dialogueBox[1]["scale"])
	updateHitbox('doof')
	setProperty('doof.alpha', 0)
	setProperty('doof.antialiasing', not dialogueBox[1]["no_antialiasing"])
	addLuaSprite('doof', true)

	objectPlayAnimation('doof', 'open', true)
	
	setProperty('doof.offset.x', dialogueBox[1]["animations"][1]["offsets"][1])
	setProperty('doof.offset.y', dialogueBox[1]["animations"][1]["offsets"][2])

	if dialogueBox[1]["image"] == nil then
		setProperty('doof.visible', false)
		setProperty('doof.active', false)
	end



	if textHasShadow == true then
		makeLuaText('doofTxtShadow', '', txtPos[3], txtPos[1] + shadowDistanceX, txtPos[2] + shadowDistanceY)

		setObjectCamera('doofTxtShadow', 'other')
		setTextAlignment('doofTxtShadow', 'left')
		setProperty('doofTxtShadow.borderSize', textBorderSize)

		setProperty('doofTxtShadow.borderColor', getColorFromHex(shadowColor))
		if textBorderSize <= 0 then setProperty('doofTxtShadow.borderColor', null) end
		setProperty('doofTxtShadow.color', getColorFromHex(shadowColor))

		addLuaText('doofTxtShadow', true)
	end

	makeLuaText('doofTxt', '', txtPos[3], txtPos[1], txtPos[2])

	setObjectCamera('doofTxt', 'other')
	setTextAlignment('doofTxt', 'left')
	setProperty('doofTxt.borderSize', textBorderSize)

	setProperty('doofTxt.borderColor', getColorFromHex(textBorderColor))
	if textBorderSize <= 0 then setProperty('doofTxt.borderColor', null) end
	setProperty('doofTxt.color', getColorFromHex(textColor))

	setProperty('doofTxt.alpha', 0)
	addLuaText('doofTxt', true)

end


if daDialogueType == 'end' then

	function onEndSong()

		if daDialogueType == 'end' then

			if finished._end == false then
			
				if inDialogue == false then
					dialogueAppear('end')
				end
				
				return Function_Stop
				
			end
		
		end

		return Function_Continue
		
	end

else

	function onStartCountdown()

		if not (daDialogueType == 'end') then
		
			if finished.start == false then

				if inDialogue == false then
					dialogueAppear('start')
				end
				
				return Function_Stop
				
			end
		
		end
		
		setProperty('inCutscene', false)

		return Function_Continue
			
	end

end

function dialogueAppear(type)

	createTextboxStuff()

	if (onlyOneTime == true and getPropertyFromClass('PlayState', 'seenCutscene') == true) or (onlyForStoryMode == true and getPropertyFromClass('PlayState', 'isStoryMode') == false) then
		finished.start = true
		setProperty('canPause', true)
		startCountdown()
		return
	end

	if type == 'start' then
	
		if (onlyForStoryMode == true and getPropertyFromClass('PlayState', 'isStoryMode') == true) or onlyForStoryMode == false then

			if (onlyOneTime == true and getPropertyFromClass('PlayState', 'seenCutscene') == false) or onlyOneTime == false then

				setProperty('canPause', false)
				--setProperty('inCutscene', true)

				playMusic(music, musicVolume, musicLoops)

				if getPropertyFromClass('flixel.FlxG', 'sound.music.playing') == false then
					playSound(music, musicVolume, 'dialogueMusic')
				end


				if doSmallCutscene == true then

					makeLuaSprite('black', '', -500, -300);
					luaSpriteMakeGraphic('black', getPropertyFromClass('flixel.FlxG', 'width') * 2, getPropertyFromClass('flixel.FlxG', 'height') * 2, '000000')
					setObjectCamera('black', 'other')
					addLuaSprite('black', true)

					doTweenAlpha('blackAlpha', 'black', 0, 2)

				else
					textboxAppear()
					updateDialogueBox()
				end

			end
		
		end
		
	else
	
		textboxAppear()
	
		playMusic(music, musicVolume, musicLoops)

		if getPropertyFromClass('flixel.FlxG', 'sound.music.playing') == false then
			playSound(music, musicVolume, 'dialogueMusic')
		end
		
		updateDialogueBox()
		
	end
	
	setProperty('inCutscene', true)
	
	inDialogue = true
	
end

function onUpdate()

	if inDialogue == true then

		if dialogue[page].lock == nil or dialogue[page].lock == '' then dialogue[page].lock = false end

		if getProperty('doof.alpha') == dialogueBox[1]["alpha"] then

			if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
				
				if completeTxt == dialogue[page].text then
					
					if page == #dialogue then
						endDialogue()
					else
						page = page + 1
						playSound(clickSound, clickVolume)
						updateDialogueBox()
					end

				elseif dialogue[page].lock == false then
					cancelTimer('txtWait')
					cancelTimer('talkWait')
					completeTxt = dialogue[page].text
				end

			end

			if dialogue[page].lock == false and getPropertyFromClass('flixel.FlxG', 'keys.pressed.SHIFT') and not (page == #dialogue + 1) then
				cancelTimer('txtWait')
				cancelTimer('talkWait')
				completeTxt = dialogue[page].text
			end


			if page == #dialogue + 1 or (canSkip == true and dialogue[page].lock == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ESCAPE')) then
				endDialogue()
			end


			setTextString('doofTxt', completeTxt)
			if textHasShadow == true then setTextString('doofTxtShadow', completeTxt) end


			for i = 1, #characters do
			
				for ii = 1, #characters[i]["animations"] do
				
					if dialogue[page].character == 'all' then
			
						if characters[i]["animations"][ii]["name"] == dialogue[page].anim then
				
							if characters[i]["animations"][ii]["loops"] == true then
								playPortraitAnimation(characters[i]["name"], dialogue[page].anim)
							end
				
						end
					
					elseif characters[i]["name"] == dialogue[page].character then 
					
						if characters[i]["animations"][ii]["name"] == dialogue[page].anim then
				
							if characters[i]["animations"][ii]["loops"] == true then
								playPortraitAnimation(characters[i]["name"], dialogue[page].anim)
							end
				
						end
						
					end
					
				end

			end
			
			

			for i = 1, #dialogueBox[1]['animations'] do
				
				if dialogueBox[1]["animations"][i]["name"] == dialogue[page].dialogueAnim then
				
					if dialogueBox[1]["animations"][i]["loops"] == true and getProperty('doof.animation.curAnim.finished') == true then
					
						if not (dialogue[page].dialogueAnim == nil or dialogue[page].dialogueAnim == '') then
							objectPlayAnimation('doof', dialogue[page].dialogueAnim, false)
						else
							objectPlayAnimation('doof', 'open', false)
						end
						
					end
					
					setProperty('doof.flipX', dialogueBox[1]["animations"][i]["flipX"])
					setProperty('doof.antialiasing', not dialogueBox[1]["animations"][i]["no_antialiasing"])
					
					setProperty('doof.offset.x', dialogueBox[1]["animations"][i]["offsets"][1])
					setProperty('doof.offset.y', dialogueBox[1]["animations"][i]["offsets"][2])
					
				end
				
			end

		end
	
	end

end

function onTimerCompleted(tag)

	if tag == 'txtWait' then

		txtNum = txtNum + 1
		cutText = string.sub(dialogue[page].text, txtNum, txtNum)
		completeTxt = completeTxt..cutText

		if txtNum < string.len(dialogue[page].text) then

			if stopAtPunctuation == true then

				if (cutText == '?' or cutText == '.') then
					runTimer('txtWait', textWaitTimer + 0.2)
				elseif (cutText == ',') then
					runTimer('txtWait', textWaitTimer + 0.1)
				else
					runTimer('txtWait', textWaitTimer)
				end

			else
				runTimer('txtWait', textWaitTimer)
			end

		end

	end

	if tag == 'talkWait' then

		if stopAtPunctuation == true then

			if not (cutText == ' ' or cutText == ',' or cutText == '?' or cutText == '!' or cutText == '.') then

				if not (dialogue[page].talkSound == nil or dialogue[page].talkSound == '') then
					playSound(dialogue[page].talkSound, talkVolume)
				end

			end

		else

			if not (dialogue[page].talkSound == null or dialogue[page].talkSound == '') then
				playSound(dialogue[page].talkSound, talkVolume)
			end

		end

		if txtNum < string.len(dialogue[page].text) then
			runTimer('talkWait', talkWaitTimer)
		end

	end

end

function onTweenCompleted(tag)

	if tag == 'blackAlpha' then
		textboxAppear()
		updateDialogueBox()
	end

	if tag == 'doofAlpha' or tag == 'doofAlphaEnd' then

		--remove everything as we don't need it anymore
		removeLuaSprite('doofBG', true)
		removeLuaSprite('doof', true)

		for i = 1, #characters do
			removeLuaSprite('portrait'..i, true)
		end

		if textHasShadow == true then
			removeLuaSprite('doofTxtShadow', true)
		end
		removeLuaSprite('doofTxt', true)
		removeLuaSprite('black', true)
		
		stopSound('startSound')

		setProperty('canPause', true)
		setPropertyFromClass('PlayState', 'seenCutscene', true)
		
	end
		
	if tag == 'doofAlpha' and not (daDialogueType == 'end') then
		startCountdown()
		removeLuaScript(scriptName)
	end
	
	if tag == 'doofAlphaEnd' and daDialogueType == 'end' then
		endSong(false)
		removeLuaScript(scriptName)
	end

end

function updateDialogueBox()

	if not (getProperty('doof.animation.curAnim.name') == 'open') then
		objectPlayAnimation('doof', dialogue[page].dialogueAnim, true)
	end

	if dialogue[page].character == 'all' then

		for i = 1, #characters do
			setProperty('portrait'..i..'.alpha', characters[i]["alpha"])
			playPortraitAnimation(characters[i]["name"], dialogue[page].anim)
		end

	else

		for i = 1, #characters do

			if characters[i]["name"] == dialogue[page].character then
				setProperty('portrait'..i..'.alpha', characters[i]["alpha"])
				playPortraitAnimation(characters[i]["name"], dialogue[page].anim)

			else
				setProperty('portrait'..i..'.alpha', characters[i]["inactive_alpha"])
			end

		end

	end
	
	if dialogue[page].font == '' or dialogue[page].font == nil then
		setTextFont('doofTxt', 'japanvcr.otf')
		if textHasShadow == true then setTextFont('doofTxtShadow',  'japanvcr.otf') end
	else
		setTextFont('doofTxt', dialogue[page].font)
		if textHasShadow == true then setTextFont('doofTxtShadow', dialogue[page].font) end
	end
	
	if dialogue[page].textSize == '' or dialogue[page].textSize == nil then
		setTextSize('doofTxt', 40)
		if textHasShadow == true then setTextSize('doofTxtShadow', 40) end
	else
		setTextSize('doofTxt', dialogue[page].textSize)
		if textHasShadow == true then setTextSize('doofTxtShadow', dialogue[page].textSize) end
	end

	cutText = ''
	completeTxt = ''
	txtNum = 0

	runTimer('txtWait', textWaitTimer)
	runTimer('talkWait', textWaitTimer)
	
	if not (dialogue[page].startSound == nil or dialogue[page].startSound == '') then
		playSound(dialogue[page].startSound, 1, 'startSound')
	end
	
	if BG == true then
	
		if not (dialogue[page].bgImage == nil or dialogue[page].bgImage == '') then
		
			loadGraphic('doofBG', dialogue[page].bgImage)
			
			setProperty('doofBG.alpha', 1)
			
			if not (dialogue[page].bgPos == nil or dialogue[page].bgPos == {}) then
				setProperty('doofBG.x', dialogue[page].bgPos[1])
				setProperty('doofBG.y', dialogue[page].bgPos[2])
			end
			
			if not (dialogue[page].bgScale == nil or dialogue[page].bgScale == '') then
				setProperty('doofBG.scale.x', dialogue[page].bgScale)
				setProperty('doofBG.scale.y', dialogue[page].bgScale)
			end
			
		else
		
			removeLuaSprite('doofBG', true)
			
			makeLuaSprite('doofBG', '', -500, -300);
			luaSpriteMakeGraphic('doofBG', getPropertyFromClass('flixel.FlxG', 'width') * 2, getPropertyFromClass('flixel.FlxG', 'height') * 2, 'ffffff')
			setProperty('doofBG.alpha', 0)
			setObjectCamera('doofBG', 'other')
			addLuaSprite('doofBG', true)
			
			setObjectOrder('doofBG', 0)
	
			setProperty('doofBG.alpha', 0.5)
			
		end
		
	end

end

function playPortraitAnimation(character, anim)

	for i = 1, #characters do

		if characters[i]["name"] == character then
		
			objectPlayAnimation('portrait'..i, anim, false)
			
			for ii = 1, #characters[i]["animations"] do
			
				if characters[i]["animations"][ii]["name"] == anim then
				
					setProperty('portrait'..i..'.flipX', characters[i]["animations"][ii]["flipX"])
					
					setProperty('portrait'..i..'.offset.x', characters[i]["animations"][ii]["offsets"][1])
					setProperty('portrait'..i..'.offset.y', characters[i]["animations"][ii]["offsets"][2])
					
				end
				
			end
			
		end

	end

end

function textboxAppear()

	if textboxOpen == 'anim' or textboxOpen == 'animation' then
		setProperty('doof.alpha', dialogueBox[1]["alpha"])
		setProperty('doofTxt.alpha', 1)
		objectPlayAnimation('doof', 'open', true)

	elseif textboxOpen == 'fade' then
		if dialogueBox[1]["alpha"] > 0 then doTweenAlpha('doofAlpha1', 'doof', dialogueBox[1]["alpha"], 0.5) end
		doTweenAlpha('doofTxtAlpha1', 'doofTxt', 1, 0.5)
		objectPlayAnimation('doof', dialogue[page].dialogueAnim, true)
		objectPlayAnimation('doof', dialogue[page].dialogueAnim, true)

	else
		setProperty('doof.alpha', dialogueBox[1]["alpha"])
		setProperty('doofTxt.alpha', 1)
	end

	if BG == true then
	
		if not (dialogue[page].bgImage == nil or dialogue[page].bgImage == '') then
			setProperty('doofBG.alpha', 1)
		else
			setProperty('doofBG.alpha', 0.5)
		end
		
	end

end

function endDialogue()

	inDialogue = false

	--just in case
	cancelTimer('txtWait')
	cancelTimer('talkWait')

	doTweenAlpha('doofBGAlpha', 'doofBG', 0, 1)
	
	if daDialogueType == 'end' then
		doTweenAlpha('doofAlphaEnd', 'doof', 0, 1)
		finished._end = true
	else
		doTweenAlpha('doofAlpha', 'doof', 0, 1)
		finished.start = true
	end

	for i = 1, #characters do
		doTweenAlpha('portrait'..i..'Alpha', 'portrait'..i, 0, 1)
	end
	doTweenAlpha('doofTxtAlpha', 'doofTxt', 0, 1)
	if textHasShadow == true then
		doTweenAlpha('doofTxtShadowAlpha', 'doofTxtShadow', 0, 1)
	end

	if getPropertyFromClass('flixel.FlxG', 'sound.music.playing') == false then
		soundFadeOut('dialogueMusic', 1, 0)
	else
		soundFadeOut('', 1, 0)
	end

end

function onSoundFinished(tag)

	if tag == 'dialogueMusic' and musicLoops == true then
		playSound(music, musicVolume, 'dialogueMusic')
	end

end
