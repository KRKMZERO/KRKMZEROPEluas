local randomplus ={
    '0.010',
    '0.015',
    '0.020',
    '0.025',
    '0.030',
}

function onEvent(eventName, value1, value2)
    if eventName == 'Random Add Camera Zoom' then
        triggerEvent('Add Camera Zoom',randomplus[getRandomInt(1, #randomplus)],randomplus[getRandomInt(1, #randomplus)])
    end
end