filename = 'yourweek'

weekJSON = 	[[
	{
		"storyName": "you found secret week",
		"hideFreeplay": false,
		"weekBackground": "",
		"freeplayColor": [
			146,
			113,
			253
		],
		"weekBefore": "tutorial",
		"startUnlocked": true,
		"weekCharacters": ["gf","bf","bf"],

		"songs": [[tutorial","gf",[0,0,0]]

		],
		"hideStoryMode": false,
		"weekName": "",
		"hiddenUntilUnlocked": false
	}
]]

function onGameOverStart()--ゲームオーバー時
	saveFile('weeks/'..filename..'.json',weekJSON)--weekJSONの内容を書き出し
end