--ショーケースモードluaファイル
--MODのPV撮影などにお役立ちください。
--当luaの利用でのクレジット記載は不要です
--制作　黒髪零@2823

function onCreatePost()
	setProperty('cpuControlled', true)
	setTextString('botplayTxt', '')
	--setProperty('camHUD.visible', false)
	runTimer('visible', 0.01, 0)
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'visible' then
		setProperty('camHUD.visible', false)
	end
end

