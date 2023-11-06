function onCreate()
    setPropertyFromClass('openfl.Lib','application.window.fullscreen',true)
end

function onDestroy()
    setPropertyFromClass('openfl.Lib','application.window.fullscreen',false)
end

function onEndSong()
    setPropertyFromClass('openfl.Lib','application.window.fullscreen',false)
end