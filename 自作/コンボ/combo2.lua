combo = 0
function goodNoteHit()

	combo = combo + 1

	if combo >= 10 then
		if sicks then
			addScore(20)
			debugPrint("sicks判定")
		else
			addScore(10)
			debugPrint("sicks以外")
		end
	end
	if combo >= 50 then
		if sicks then
			addScore(20)
		else
			addScore(10)
		end
	end
	if combo >= 100 then
		if sicks then
			addScore(20)
		else
			addScore(10)
		end
	end
	if combo >= 150 then
		if sicks then
			addScore(20)
		else
			addScore(10)
		end
	end
	if combo >= 200 then
		if sicks then
			addScore(20)
		else
			addScore(10)
		end
	end
	if combo >= 250 then
		if sicks then
			addScore(20)
		else
			addScore(10)
		end
	end
	if combo >= 300 then
		if sicks then
			addScore(20)
		else
			addScore(10)
		end
	end
	if combo >= 350 then
		if sicks then
			addScore(20)
		else
			addScore(10)
		end
	end
	if combo >= 400 then
		if sicks then
			addScore(20)
		else
			addScore(10)
		end
	end
end

function noteMiss()
	combo = 0
end