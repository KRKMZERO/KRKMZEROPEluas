function onCreate()

	shadername = 'vhs'--シェーダー名
	----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	initLuaShader(shadername)
	
    makeLuaSprite("shadersprite")
    makeGraphic("shadersprite", screenWidth, screenHeight)
    setSpriteShader("shadersprite", shadername)
    addHaxeLibrary("ShaderFilter", "openfl.filters")
    runHaxeCode([[
      PlayState.instance.camGame.setFilters([new ShaderFilter(game.getLuaObject("shadersprite").shader)]);
      PlayState.instance.camHUD.setFilters([new ShaderFilter(game.getLuaObject("shadersprite").shader)]);
    ]])  
end

--camGame camHUD
--setObjectCamera("shadersprite", "game");--追加部分