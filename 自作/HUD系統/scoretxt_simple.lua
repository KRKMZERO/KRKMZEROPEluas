
function onUpdatePost(elapsed)

	RPC = getProperty('ratingPercent')
	Acc = math.floor((RPC*100)*100)/100;

	formatted_score = format_int(score)

	if getProperty('songMisses') == 0 then
		setTextString('scoreTxt',"Score:" ..formatted_score.. ' Accuracy:'..math.floor((RPC*100)*100)/100 ..'%');
	else
		setTextString('scoreTxt',"Score:" ..formatted_score.. ' Miss:'..getProperty('songMisses')..' Accuracy:'..math.floor((RPC*100)*100)/100 ..'%');
	end

	setProperty('scoreTxt.antialiasing', true)
end

function format_int(number)

  local i, j, minus, int, fraction = tostring(number):find('([-]?)(%d+)([.]?%d*)')
  -- reverse the int-string and append a comma to all blocks of 3 digits
  int = int:reverse():gsub("(%d%d%d)", "%1,")

  -- reverse the int-string back remove an optional comma and put the 
  -- optional minus and fractional part back
  return minus .. int:reverse():gsub("^,", "") .. fraction
end