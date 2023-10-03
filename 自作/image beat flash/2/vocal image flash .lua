function onCreate()
	makeLuaSprite('flashL','flashL',0,0)
	addLuaSprite('flashL')
	setProperty('flashL.alpha', 0.0)
	setObjectCamera('flashL', 'hud')
	setProperty('flashL.color', getColorFromHex('ff6347'))--FF0000 0000FF

	makeLuaSprite('flashR','flashR',0,0)
	addLuaSprite('flashR')
	setProperty('flashR.alpha', 0.0)
	setObjectCamera('flashR', 'hud')
	setProperty('flashR.color', getColorFromHex('4169e1'))--FF0000 0000FF
end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	setProperty('flashL.alpha', 0.5)
	doTweenAlpha('flashLTween', 'flashL', 0.0, 0.4, linear)
end
function goodNoteHit()
	setProperty('flashR.alpha', 0.5)
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