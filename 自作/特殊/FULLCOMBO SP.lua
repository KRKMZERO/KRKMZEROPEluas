--動画撮影用に使ってるカットしやすくするためのluaです
totalnotes = 9999
function onCreate()
	makeLuaText('FULLCOMTXT', 'FULL COMBO!!', 1210, 'x', 'y')
	setObjectCamera('FULLCOMTXT', 'hud')
	setTextAlignment("FULLCOMTXT", "CENTER");
	screenCenter('FULLCOMTXT', 'x')
	screenCenter('FULLCOMTXT', 'y')
	setTextSize('FULLCOMTXT', 75)
	setProperty('FULLCOMTXT.alpha', 0)
	addLuaText('FULLCOMTXT')
	setProperty('FULLCOMTXT.antialiasing', true);
	setProperty("FULLCOMTXT.color", getColorFromHex("ECFF51"))
	setTextBorder('FULLCOMTXT','1','000000')
	
	setObjectCamera('FULLCOMTXT', 'other')

	setObjectOrder('FULLCOMTXT',3)
	--大事な、このluaの使い方ポイント
	--曲のたびにif　songName ==を書き対象の曲名を書いて
	--累計ノーツ数を書いてください
	if songName == 'Fandomania' then
	totalnotes = 479
	end
end
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if getProperty('combo') == totalnotes then

		doTweenAlpha('FULLCOMTXTTween', 'FULLCOMTXT', 1, 1, linear)
		playSound('confirmMenu', 0.9)

	end
	if botPlay then
		addScore('350')
		setProperty('ratingPercent',1)
	end
end
function onUpdate()--細かい設定

end