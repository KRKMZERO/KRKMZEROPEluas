
function onUpdatePost(elapsed)

	RPC = getProperty('ratingPercent')
	Acc = math.floor((RPC*100)*100)/100;

	if getProperty('songMisses') == 0 then
		setTextString('scoreTxt',"Score:" ..score.. ' Accuracy:'..math.floor((RPC*100)*100)/100 ..'%');
	else
		setTextString('scoreTxt',"Score:" ..score.. ' Miss:'..getProperty('songMisses')..' Accuracy:'..math.floor((RPC*100)*100)/100 ..'%');
	end

	setProperty('scoreTxt.antialiasing', true)
end