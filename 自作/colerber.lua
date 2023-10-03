--[[


--]]
function onCreatePost()--特殊なUI変更
	setProperty('timeBar.color', getColorFromHex('ff99ff'))--デフォルトはFFFFFF
	setProperty('timeBarBG.color', getColorFromHex('ffbf7f'))--デフォルトは000000
	setProperty('timeTxt.color', getColorFromHex('7fbfff'))--デフォルトはFFFFFF
	setTextBorder('timeTxt','2',getColorFromHex('99ccff'))--縁取りの色です
end
----------------------------------
--おすすめカラーコード一覧
--FFFFFF　白
--000000　黒
--FF0000　赤
--0000FF　青
--00F000　緑
--FFFF00　黄
--FFC0CB　ピンク
--F387FF　ピンクに似た別の色
--当Luaはある程度Engineのデフォルトカラーコードになっています
--
--そのほかのカラーコードはこちらへhttps://www.colordic.org/
----------------------------------
--バージョンアップ履歴
--2.0
--文字のカラーと縁取りのカラーが変更可能に
--英語表示の時頭文字を大文字に
----------------------------------