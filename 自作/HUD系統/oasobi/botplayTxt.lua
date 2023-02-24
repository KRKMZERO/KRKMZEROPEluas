local userName = ""
function onCreatePost()
	addHaxeLibrary("Sys")
	userName = runHaxeCode([[
	  var envs = Sys.environment();
	  if (envs.exists("USERNAME")) {
	      return envs["USERNAME"];
	  }
	
	  if (envs.exists("USER")) {
	      return envs["USER"];
	  }    
	  return null;
	]])
	setTextString('botplayTxt', userName..' your cheter');
end