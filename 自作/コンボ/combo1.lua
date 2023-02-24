combo = 0
function goodNoteHit()

	combo = combo + 1

	if combo >= 10 then
		addScore(10)
	end
	if combo >= 50 then
		addScore(10)
	end
	if combo >= 100 then
		addScore(10)
	end
	if combo >= 150 then
		addScore(10)
	end
	if combo >= 200 then
		addScore(10)
	end
	if combo >= 250 then
		addScore(10)
	end
	if combo >= 300 then
		addScore(10)
	end
	if combo >= 350 then
		addScore(10)
	end
	if combo >= 400 then
		addScore(10)
	end
end

function noteMiss()
	combo = 0
end