ADDIMAGE = ''
--画像サイズは1280×720でお願いします
--それ以下それ以上の場合はスケールを調整してください
function onCreate()
	makeLuaSprite('image', ADDIMAGE, 0, 0);
	addLuaSprite('image', true);
	scaleObject('image', 1, 1);
	--hud or other
	setObjectCamera('timeBar','hud')
end