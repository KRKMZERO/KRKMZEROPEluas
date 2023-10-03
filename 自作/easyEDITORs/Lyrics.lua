
function onCreate()

	--setProperty("skipCountdown", true)

    makeLuaText('lyric', '', screenWidth, 0, 545)
	setTextAlignment('lyric', 'center')
    addLuaText('lyric')
    setTextSize('lyric', 20)--Let's change the numbers here!
	setObjectCamera('lyric', 'other')

	setProperty('lyric.antialiasing', true)
	
	--フォントを適応する場合はコメントアウトを外してね
	--setTextFont('lyric', '')

end

--luaTextExists
--[[textLyrics()の使い方
1.最初の仕切りは文字です。セリフを言わせるときや曲に歌詞があるときに使う箇所です
2.2番目はテキスト自体の色です３番目は文字の周りの色です
]]
function textLyrics(Lyrics,textColor,borderColer)
	setTextString('lyric', Lyrics)
	setTextColor('lyric', textColor)
	setTextBorder('lyric', '1',borderColer)
end

function onStepHit()
	if curStep == 2 then
		textLyrics(Lyrics,'FFFFFF','000000')
	end
end


