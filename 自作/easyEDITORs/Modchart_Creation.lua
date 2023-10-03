function onStepHit()
    if curStep == 5 then
      modchartX(10,20,-20,-10,1,'quartInOut')
      modchartY(10,20,-20,-10,1,'quartInOut')
    end
    if curStep == 165 then
        modchartX(0,0,0,0,5,'quartOut')
        modchartY(0,0,0,0,5,'quartOut')
    end
end
function onBeatHit()
    if curStep > 200 then
        modchartX(getRandomInt(-300,-150),getRandomInt(-150,0),getRandomInt(0,150),getRandomInt(150,300),0.5,'quartOut')
    end
end

  
  
  
  
function modchartX(MX0,MX1,MX2,MX3,TweenspeedX,easeX)
    --プラスもマイナスも可能にする区画
    local MDX0 = (MX0 and tonumber(MX0) or 0) 
    local MDX1 = (MX1 and tonumber(MX1) or 0) 
    local MDX2 = (MX2 and tonumber(MX2) or 0) 
    local MDX3 = (MX3 and tonumber(MX3) or 0) 
    --
    noteTweenX('MCTweenX0', 4, defaultPlayerStrumX0 + MDX0, TweenspeedX, easeX)
    noteTweenX('MCTweenX1', 5, defaultPlayerStrumX1 + MDX1, TweenspeedX, easeX)
    noteTweenX('MCTweenX2', 6, defaultPlayerStrumX2 + MDX2, TweenspeedX, easeX)
    noteTweenX('MCTweenX3', 7, defaultPlayerStrumX3 + MDX3, TweenspeedX, easeX)
end
function modchartY(MY0,MY1,MY2,MY3,TweenspeedY,easeY)
    --プラスもマイナスも可能にする区画
    local MDY0 = (MY0 and tonumber(MY0) or 0) 
    local MDY1 = (MY1 and tonumber(MY1) or 0) 
    local MDY2 = (MY2 and tonumber(MY2) or 0) 
    local MDY3 = (MY3 and tonumber(MY3) or 0) 
    --
    noteTweenY('MCTweenY0', 4, defaultPlayerStrumY0 + MDY0, TweenspeedY, easeY)
    noteTweenY('MCTweenY1', 5, defaultPlayerStrumY1 + MDY1, TweenspeedY, easeY)
    noteTweenY('MCTweenY2', 6, defaultPlayerStrumY2 + MDY2, TweenspeedY, easeY)
    noteTweenY('MCTweenY3', 7, defaultPlayerStrumY3 + MDY3, TweenspeedY, easeY)
end
function onCreate()
    def = getPropertyFromClass('ClientPrefs', 'middleScroll')
    setPropertyFromClass('ClientPrefs', 'middleScroll',true)
end
function onEndSong()
    setPropertyFromClass('ClientPrefs', 'middleScroll',def)
end
function onDestroy()
    setPropertyFromClass('ClientPrefs', 'middleScroll',def)
end
--[[
middleScroll notes
412
524
636
748


]]