function onCreatePost()
    --debugPrint('comboOffset ',getPropertyFromClass('ClientPrefs','comboOffset'))
    --setPropertyFromClass('ClientPrefs','comboOffset',([98,-317,208,-244]))


    --Rating Offset
    --x
    setPropertyFromClass('ClientPrefs','comboOffset[0]',98)
    --y
    setPropertyFromClass('ClientPrefs','comboOffset[1]',-317)

    --Numbers Offset
    --x
    setPropertyFromClass('ClientPrefs','comboOffset[2]',208)
    --y
    setPropertyFromClass('ClientPrefs','comboOffset[3]',-244)



end

--[[
				case 0: dumbTexts.members[i].text = 'Rating Offset:';
				case 1: dumbTexts.members[i].text = '[' + ClientPrefs.comboOffset[0] + ', ' + ClientPrefs.comboOffset[1] + ']';
				case 2: dumbTexts.members[i].text = 'Numbers Offset:';
				case 3: dumbTexts.members[i].text = '[' + ClientPrefs.comboOffset[2] + ', ' + ClientPrefs.comboOffset[3] + ']';


                setPropertyFromClass('ClientPrefs','comboOffset',98,-317,208,-244)
                --]]