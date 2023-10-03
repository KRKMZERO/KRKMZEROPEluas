function onEvent(name, value1, value2)
    if name == 'Lyrics' then

		setTextString('lyric', value1)
		if value2 == '' then
			setTextColor('lyric', 'FFFFFF')
		else
			setTextColor('lyric', value2)
		end
    end
end

function onCreate()
    makeLuaText('lyric', '', screenWidth, 0, 545)
    addLuaText('lyric')
    setTextSize('lyric', 40)--Let's change the numbers here!
	setObjectCamera('lyric', 'other')

end