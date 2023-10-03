function onCreate()
	makeLuaSprite('flash','flash',0,0)
	addLuaSprite('flash')
	setProperty('flash.alpha', 0.0)
	setObjectCamera('flash', 'hud')
	setProperty('flash.color', getColorFromHex('F387FF'))--FF0000 0000FF
end

function onBeatHit()
	setProperty('flash.alpha', 0.5)
	doTweenAlpha('flashTween', 'flash', 0.0, 0.4, linear)
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