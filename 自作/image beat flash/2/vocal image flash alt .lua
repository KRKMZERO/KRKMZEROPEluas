--SettingColor
local bfColorHex = rgbToHex(bfColor[1], bfColor[2], bfColor[3])
local dadColorHex = rgbToHex(dadColor[1], dadColor[2], dadColor[3])

function onCreate()

	makeLuaSprite('flashL','flashL',0,0)
	addLuaSprite('flashL')
	setProperty('flashL.alpha', 0.0)
	setObjectCamera('flashL', 'hud')
	setProperty("flashL.color", dadColorHex)--FF0000 0000FF

	makeLuaSprite('flashR','flashR',0,0)
	addLuaSprite('flashR')
	setProperty('flashR.alpha', 0.0)
	setObjectCamera('flashR', 'hud')
	setProperty("flashR.color", bfColorHex)--FF0000 0000FF
end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	setProperty('flashL.alpha', 1)
	doTweenAlpha('flashLTween', 'flashL', 0.0, 0.4, linear)
end
--
function goodNoteHit()
	setProperty('flashR.alpha', 1)
	doTweenAlpha('flashRTween', 'flashR', 0.0, 0.4, linear)
end
----------------------------------
--おすすめカラーコード一覧
--FFFFFF　白
--000000　黒
--FF0000　赤
--0000FF　青
--00F000　緑
--FFFF00　黄
--FFC0CB　ピンク
--F387FF　ピンクに似た別の色
--当Luaはある程度Engineのデフォルトカラーコードになっています
--
--そのほかのカラーコードはこちらへhttps://www.colordic.org/
----------------------------------
--function onUpdatePost()
--dadColors = getProperty("dad.healthColorArray")
--bfColors = getProperty("boyfriend.healthColorArray")

--dadColor = tonumber(toHexString(dadColors[1], dadColors[2], dadColors[3]))
--bfColor = tonumber(toHexString(bfColors[1], bfColors[2], bfColors[3]))

--setProperty("flashL.colors", dadColor)--FF0000 0000FF
--setProperty("flashR.colors", bfColor)--FF0000 0000FF
--end