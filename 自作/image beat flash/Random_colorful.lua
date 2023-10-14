randomcolor = {
	'FF0000',
	'FF00D9',
	'3A00FF',
	'00C8FF',
	'00FF4B',
	'E1FF00',
	'FF8E00',
	'FF00A7',
}
function onCreate()
	if colorRandom == true then
		usecolor = rgbToHex(getRandomInt(0, 255), getRandomInt(0, 255), getRandomInt(0, 255))
	end
end

function onCreatePost()--特殊なUI変更 usecolor = randomcolor[getRandomInt(1, #randomcolor)]

	makeLuaSprite('blend','flash',0,0)
	--makeGraphic('blend',screenWidth,screenHeight,'FFFFFF')
	addLuaSprite('blend')
	setProperty('blend.alpha', 0)
	setObjectCamera('blend', 'other')
	setBlendMode('blend', 'ADD')

	makeLuaSprite('blend2','flash',0,0)
	--makeGraphic('blend',screenWidth,screenHeight,'FFFFFF')
	addLuaSprite('blend2')
	setProperty('blend2.alpha', 0)
	setObjectCamera('blend2', 'other')
	setBlendMode('blend2', 'ADD')
end

function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if not isSustainNote then
		usecolor = rgbToHex(getRandomInt(0, 255), getRandomInt(0, 255), getRandomInt(0, 255))
		doTweenColor('T','blend',rgbToHex(getRandomInt(0, 255), getRandomInt(0, 255), getRandomInt(0, 255)),0.001,'linear')
		setProperty('blend.alpha', 0.5)
		doTweenAlpha('aT','blend',0,0.25,'linear')
	end
end

function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if not isSustainNote then
		usecolor = rgbToHex(getRandomInt(0, 255), getRandomInt(0, 255), getRandomInt(0, 255))
		doTweenColor('T2','blend2',rgbToHex(getRandomInt(0, 255), getRandomInt(0, 255), getRandomInt(0, 255)),0.001,'linear')
		setProperty('blend2.alpha', 0.5)
		doTweenAlpha('aT2','blend2',0,0.25,'linear')
	end
end




--usecolor = rgbToHex(getRandomInt(0, 255), getRandomInt(0, 255), getRandomInt(0, 255))


function rgbToHex(r,g,b)
    local rgb = (r * 0x10000) + (g * 0x100) + b
    return string.format("%x", rgb)
end
--[[
Static variables
staticread onlyADD:BlendMode
staticread onlyALPHA:BlendMode
staticread onlyDARKEN:BlendMode
staticread onlyDIFFERENCE:BlendMode
staticread onlyERASE:BlendMode
staticread onlyHARDLIGHT:BlendMode
staticread onlyINVERT:BlendMode
staticread onlyLAYER:BlendMode
staticread onlyLIGHTEN:BlendMode
staticread onlyMULTIPLY:BlendMode
staticread onlyNORMAL:BlendMode
staticread onlyOVERLAY:BlendMode
staticread onlySCREEN:BlendMode
staticread onlySHADER:BlendMode
staticread onlySUBTRACT:BlendMode
]]