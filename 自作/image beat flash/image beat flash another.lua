function onCreate()
	makeLuaSprite('flash','flash',0,0)
	addLuaSprite('flash')
	setProperty('flash.alpha', 0.0)
	setObjectCamera('flash', 'hud')
	setProperty('flash.color', getColorFromHex('F387FF'))--FF0000 0000FF
end

COLLAR = 1

function onBeatHit()
	setProperty('flash.alpha', 0.5)
	doTweenAlpha('flashTween', 'flash', 0.0, 0.4, linear)
	
	COLLAR = getRandomInt(1, 5)

	if COLLAR == 1 then
		setProperty('flash.color', getColorFromHex('FF0000'))
	end
	if COLLAR == 2 then
		setProperty('flash.color', getColorFromHex('0000FF'))
	end
	if COLLAR == 3 then
		setProperty('flash.color', getColorFromHex('00F000'))
	end
	if COLLAR == 4 then
		setProperty('flash.color', getColorFromHex('FFFF00'))
	end
	if COLLAR == 5 then
		setProperty('flash.color', getColorFromHex('FFC0CB'))
	end
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