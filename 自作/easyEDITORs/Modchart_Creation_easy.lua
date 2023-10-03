--Modchart作成にはこの区画をお使いください
--Please use this parcel for Modchart creation
function onStepHit()
  if curStep == 5 then
    modchartX(300,2,'quartInOut')
    --modchartY(100,2,'quartInOut')
  end
  if curStep == 50 then
    modchartX(-300,2,'quartInOut')
    --modchartY(100,2,'quartInOut')
  end
  if curStep == 80 then
    modchartX(1000,0.1,'quartInOut')
    --modchartY(100,2,'quartInOut')
  end
  if curStep == 200 then
    modchartX(0,2.5,'quartOut')
    --modchartY(100,2,'quartInOut')
  end
  if curStep == 332 then
    modchartX(200,2.5,'quartOut')
    --modchartY(100,2,'quartInOut')
  end
  if curStep == 430 then
    modchartX(-500,0.01,'quartOut')
    --modchartY(100,2,'quartInOut')
  end
  if curStep == 431 then
    modchartX(0,2,'quartOut')
    --modchartY(100,2,'quartInOut')
  end
end


function onCreate()
  makeLuaText('TEXT2','',500,0,0); -- Y y values go on the second and third 0's
  setTextAlignment("TEXT2", 'center');
  setTextSize('TEY2T', 40);
  addLuaText('TEXT2')
  screenCenter('TEXT2', 'xy');
end
function onUpdate(elapsed)
setTextString('TEXT2','step\n'..curStep)
end


function modchartX(MX,MXCs,Xtwn)
  --プラスもマイナスも可能にする区画
  local MDX = (MX and tonumber(MX) or 0)
  --
  
  noteTweenX('MCTweenX1', 4, defaultPlaXerStrumX0 + MDX, MXCs,Xtwn)
  noteTweenX('MCTweenX2', 5, defaultPlaXerStrumX1 + MDX, MXCs,Xtwn)
  noteTweenX('MCTweenX3', 6, defaultPlaXerStrumX2 + MDX, MXCs,Xtwn)
  noteTweenX('MCTweenX4', 7, defaultPlaXerStrumX3 + MDX, MXCs,Xtwn)
  
end

function modchartY(MY,MYCs,Ytwn)
  --プラスもマイナスも可能にする区画
  local MDY = (MY and tonumber(MY) or 0)
  --
  noteTweenY('MCTweenY1', 4, defaultPlayerStrumY0 + MDY, MYCs,Ytwn)
  noteTweenY('MCTweenY2', 5, defaultPlayerStrumY1 + MDY, MYCs,Ytwn)
  noteTweenY('MCTweenY3', 6, defaultPlayerStrumY2 + MDY, MYCs,Ytwn)
  noteTweenY('MCTweenY4', 7, defaultPlayerStrumY3 + MDY, MYCs,Ytwn)
end