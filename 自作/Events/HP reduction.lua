--No credit statement is required.
--当luaの利用でクレジット記載は必要ありません。

function onEvent(name, value1, value2)
	if name == "HP reduction" then

		--強制的に減らす％HPの割合 2は満タンでも即死
		--小数点で3桁まで増やしてもいいです 1.000で半分
		if tonumber(value1) then
			setProperty('health', getProperty('health') - value1)
			--debugPrint('success gain',tonumber(value1))
		end

		--強制的にHPをセット　1なら真ん中に戻します 0はデス
		if tonumber(value2) then
			setProperty('health', tonumber(value2))
			--debugPrint('success set',tonumber(value2))
		end
	end
end