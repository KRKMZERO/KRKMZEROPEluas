function onEvent(eventName, value1, value2)

    camspeed = tonumber(value2)

    if eventName == 'camera' then
        if value1 == 'bf' then
            cameraSetTarget('boyfriend')
        elseif value1 == 'dad' then
            cameraSetTarget('dad')
        elseif value1 == 'gf' then
            cameraSetTarget('gf')
        elseif value1 == 'BlackFlash' then
            cameraFlash("other",'000000',0.5,0)
        elseif value1 == 'WhiteFlash' then
            cameraFlash("other",'FFFFFFF',0.5,0)
        elseif value1 == 'Fleecam' and tonumber(value2) then
            triggerEvent('Camera Follow Pos',tonumber(value2))--value2で「3,20」と書く
        end
    end
    if tonumber(value2) then
        setProperty('cameraSpeed',camspeed)
    end
end

