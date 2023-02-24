                   for i = 0, getProperty('unspawnNote.length')-1 do
                   setPropertyFromGroup('playerStrum' , i, 'texture' , 'Merineko_note')
end

function onCreate()
                   for i, 0, getProperty('unspawnNote.length') then
                   if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
                   setPropertyFromGroup('unspawnNotes', i, 'texture', 'Merineko_note')
        end
    end
end