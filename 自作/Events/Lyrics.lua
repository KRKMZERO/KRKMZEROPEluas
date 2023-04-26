--lua credit
--
--Psych Engine Lyric script
--https://gamebanana.com/tools/10419
--
--Kane_Sucks
--https://gamebanana.com/members/1807875
--
--EDIT THE VALUE IN "setTextSize" IN THE .LUA FILE TO CHANGE TEXT SIZE.
--
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