--[[
ショーケースモードluaファイル
MODのPV撮影などにお役立ちください。
luaの利用でのクレジット記載は不要です
制作　黒髪零@2823
--]]
function onCreatePost()
end
function onUpdatePost()

	--強制ボットプレイ＆表記オフ
	setProperty('cpuControlled', true);
	setPropertyFromClass('ClientPrefs', 'botplay', true)
	setTextString('botplayTxt', 'ShowCaseMode');
	setTextAlignment("botplayTxt", "left")
	setProperty('botplayTxt.visible', true)
	setTextSize('botplayTxt',15)
	setProperty('botplayTxt.x', 10)
	setProperty('botplayTxt.y', 10)
	setProperty('botplayTxt..antialiasing', true);
	setObjectCamera('botplayTxt', 'other')--hud or other


	--ゲージとアイコン関係非表示
	setProperty('healthBar.visible', false);
	setProperty('healthBar.y', -1000);
	setProperty('healthBarBG.visible', false);
	setProperty('healthicon.visible', false);
	setProperty('iconP2.visible', false);
	setProperty('iconP2.y', -1000);
	setProperty('iconP1.visible', false);
	setProperty('iconP1.y', -1000);

	--スコアとコンボ非表示
	setProperty('scoreTxt.visible', false);
	setProperty('scoreTxt.y', -1000);
	setProperty('showRating', false);
	setProperty('showComboNum', false)
	--setProperty('Num.visible', false);--showCombo

	--タイムバー非表示
	setProperty('timeBar.y', 2000);
	setProperty('timeBar.visible', false);
	setProperty('timeBarBG.visible', false);
	setProperty('timeTxt.visible', false);
	setProperty('timeTxt.y', 2000);

	--自分のと敵ノーツ+スプラッシュ非表示
	setProperty('strumLineNotes.visible', false);
	setProperty('strumNotes.visible', false);
	setProperty('splashSkin.visible', false);
	setPropertyFromGroup('strumLineNotes',strumLineNotes,'visible',false)
	setPropertyFromGroup('strumLineNotes',strumLineNotes,'visible',false)
	--??
	setPropertyFromGroup('opponentStrums', i, 'visible', false)
	setPropertyFromGroup('unspawnNotes', i, 'visible', false)
	setProperty('opponentStrums.visible', false)
	setProperty('playerStrums.visible', false)
	--player
	setPropertyFromGroup('playerStrums', 0, 'x', -5000)
	setPropertyFromGroup('playerStrums', 1, 'x', -5000)
	setPropertyFromGroup('playerStrums', 2, 'x', -5000)
	setPropertyFromGroup('playerStrums', 3, 'x', -5000)
	--opponent
	setPropertyFromGroup('opponentStrums', 0, 'x', -5000)
	setPropertyFromGroup('opponentStrums', 1, 'x', -5000)
	setPropertyFromGroup('opponentStrums', 2, 'x', -5000)
	setPropertyFromGroup('opponentStrums', 3, 'x', -5000)
end