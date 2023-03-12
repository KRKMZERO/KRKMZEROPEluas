local userName = ""
function onCreatePost()
	userName = (buildTarget == "windows" and os.getenv("USERNAME") or os.getenv("USER"))
	setTextString('botplayTxt', userName..' you are cheter');
end