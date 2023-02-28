function onEvent(name, value1, value2)
    if name == 'Left_Lyrics' then
        setTextString('left_lyric', value1)
        setTextColor('left_lyric', value2)
    end
end

function onCreate()
    makeLuaText('left_lyric', '', screenWidth, 0, 0)
    addLuaText('left_lyric')
    setTextSize('left_lyric', 75)--Let's change the numbers here!
    setTextAlignment("left_lyric", "left")
    setTextBorder('left_lyric','0', '')
    setProperty('left_lyric.alpha', 0.5)
end