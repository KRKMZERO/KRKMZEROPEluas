function onEvent(name, value1, value2)
    if name == 'Right_Lyrics' then

		setTextString('right_lyric', value1)
		if value2 == '' then
			setTextColor('right_lyric', 'FFFFFF')
		else
			setTextColor('right_lyric', value2)
		end
    end
end

function onCreate()
    makeLuaText('right_lyric', '', screenWidth, 0, 0)
    addLuaText('right_lyric')
    setTextSize('right_lyric', 75)--Let's change the numbers here!
    setTextAlignment("right_lyric", "right")
    setTextBorder('right_lyric','0', '')
    setProperty('right_lyric.alpha', 0.5)
end