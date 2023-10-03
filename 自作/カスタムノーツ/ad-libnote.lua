function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'ad-libnote' then
			--setPropertyFromGroup('unspawnNotes', i, 'texture', 'ad-libnote'); --Change texture
                        setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); --Make it so Dad doesn't do animation
			setPropertyFromGroup('unspawnNotes', i, 'alpha', 0); --Make it so Dad doesn't do animation
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', 0); --Default value is: 0.023, health gained on hit
			--setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
			--setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end

	end
	makeLuaText('ad-libText', 'ad-lib!', 1210, 'timeTxt.X', 300)
	setObjectCamera('ad-libText', 'hud')
	screenCenter('ad-libText', 'x')
	setTextSize('ad-libText', 40)
	setProperty('ad-libText.alpha', 0)
	addLuaText('ad-libText')

end
--等Luaはグルーヴコースターなどそういうシステムのアドリブを意識したノーツです。
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == "ad-libnote" then
	 setProperty('ad-libText.alpha', 1)

	 runTimer('ad-libText', 0.5, 1)
	 --ロールでスコア追加。
	 addScore(650)
	 --runTimer('addscore', 0.020, 100)--0.020以下にすると得点加算がまともに動きません
	 --参考までに各判定のスコアです
	 --[sick]350
	 --[good]200
	 --[bad]100
	 --[shit]50
	end
end


function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'ad-libText' then
		doTweenAlpha('ad-libTween', 'ad-libText', 0, 0.3, linear)
	end
end