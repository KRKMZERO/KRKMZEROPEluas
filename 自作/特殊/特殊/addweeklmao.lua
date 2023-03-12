filename = 'you'

weekTXT = [[
i got you
HAHAHA
]]

function onGameOverStart()--ゲームオーバー時
	saveFile('data/'..filename..'.txt',weekTXT)--weekJSONの内容を書き出し
end