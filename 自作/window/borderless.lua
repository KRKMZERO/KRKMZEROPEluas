function onCreate()
    setPropertyFromClass('openfl.Lib','application.window.borderless',true)
end

function onDestroy()
    setPropertyFromClass('openfl.Lib','application.window.borderless',false)
end

function onEndSong()
    setPropertyFromClass('openfl.Lib','application.window.borderless',false)
end