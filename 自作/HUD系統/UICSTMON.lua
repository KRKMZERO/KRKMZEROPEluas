function onCreate()
    
    makeLuaText('HP','HP',500,400,55); -- x y values go on the second and third 0's
	setTextAlignment("HP", "left")
	setTextSize('HP', 20);
	addLuaText('HP')
    setObjectCamera('HP','other')

    makeLuaText('score','score',500,500,55); -- x y values go on the second and third 0's
	setTextAlignment("score", "left")
	setTextSize('score', 20);
	addLuaText('score')
    setObjectCamera('score','other')

    makeLuaText('Acc','Acc',500,700,55); -- x y values go on the second and third 0's
	setTextAlignment("Acc", "left")
	setTextSize('Acc', 20);
	addLuaText('Acc')
    setObjectCamera('Acc','other')

    makeLuaText('Misses','Misses',500,600,95); -- x y values go on the second and third 0's
	setTextAlignment("Misses", "left")
	setTextSize('Misses', 20);
	addLuaText('Misses')
    setObjectCamera('Misses','other')

    makeLuaText('TXT','',500,400,95); -- x y values go on the second and third 0's
	setTextAlignment("TXT", "left")
	setTextSize('TXT', 20);
	addLuaText('TXT')
    setObjectCamera('TXT','other')

    makeLuaText('enemy','enemy',500,800,95); -- x y values go on the second and third 0's
	setTextAlignment("enemy", "left")
	setTextSize('enemy', 20);
	addLuaText('enemy')
    setObjectCamera('enemy','other')
	--setProperty('LUAUITEXT.color', getColorFromHex('FFFFFF'))--字体の色です
	--setTextBorder('LUAUITEXT','1',BorderColor)--縁取りの色です
    makeLuaSprite('BEATframe1','',0,0)
	makeLuaSprite('BEATframe2','',0,15)
	makeLuaSprite('BEATframe3','',screenWidth - 15 ,15)
	makeLuaSprite('BEATframe4','',0 ,screenHeight - 15)

	makeGraphic('BEATframe1', screenWidth,15, '0086FF')
	makeGraphic('BEATframe2',15,screenHeight - 30, '0086FF')
	makeGraphic('BEATframe3',15,screenHeight - 30, '0086FF')
	makeGraphic('BEATframe4', screenWidth,15, '0086FF')

	addLuaSprite('BEATframe1')
	addLuaSprite('BEATframe2')
	addLuaSprite('BEATframe3')
	addLuaSprite('BEATframe4')

	setProperty('BEATframe1.alpha', 0.0)
	setProperty('BEATframe2.alpha', 0.0)
	setProperty('BEATframe3.alpha', 0.0)
	setProperty('BEATframe4.alpha', 0.0)

	setObjectCamera('BEATframe1', 'other')
	setObjectCamera('BEATframe2', 'other')
	setObjectCamera('BEATframe3', 'other')
	setObjectCamera('BEATframe4', 'other')
end
--    if triggerEvent == "Add Camera Zoom" then
function onEvent(eventName, value1, value2)
    if eventName == "Add Camera Zoom" then
        setProperty('BEATframe1.alpha', 0.75)
        doTweenAlpha('BEATframe1Tween', 'BEATframe1', 0, 0.25, linear)

        setProperty('BEATframe2.alpha', 0.75)
        doTweenAlpha('BEATframe2Tween', 'BEATframe2', 0, 0.25, linear)

        setProperty('BEATframe3.alpha', 0.75)
        doTweenAlpha('BEATframe3Tween', 'BEATframe3', 0, 0.25, linear)

        setProperty('BEATframe4.alpha', 0.75)
        doTweenAlpha('BEATframe4Tween', 'BEATframe4', 0, 0.25, linear)
    end
end
function onUpdatePost()

    setProperty('healthBar.flipX' ,true)
    setProperty('iconP1.flipX', true)
    setProperty('iconP1.x', 250)
    setProperty('iconP1.y', 10)
    setProperty('iconP2.visible', false)
    setHealthBarColors('FF0000','0076FF')
    setObjectCamera('healthBar','other')
    setObjectCamera('healthBarBG','other')
    setObjectCamera('iconP1','other')

    setProperty('scoreTxt.visible', false)
	setTextString('botplayTxt', '')

end
function onUpdate()
    local health = getProperty('health')
    setTextString('HP','HP:' ..math.floor((health*50)/1) ..'%')
    if math.floor((health*50)/1) > 100 then 
        setProperty('HP.color', getColorFromHex('DCFF00'))
    elseif math.floor((health*50)/1) < 100 and math.floor((health*50)/1) > 25 then 
        setProperty('HP.color', getColorFromHex('FFFFFF'))
    elseif math.floor((health*50)/1) < 25 then 
        setProperty('HP.color', getColorFromHex('FF0000'))
    end

    if not botPlay then
        setTextString('score','score:' ..getProperty('songScore'))
    else
        setTextString('score','HITs:' ..COUNT)
    end

    local RPC = getProperty('ratingPercent')
	local Acc = math.floor((RPC*100)*100)/100;
    if not botPlay then
        setTextString('Acc','Acc:' ..math.floor((RPC*100)*100)/100 ..'%')
        if Acc > 99.00 then
            setProperty('Acc.color', getColorFromHex('DCFF00'))
        end
        if Acc < 99.00 and Acc > 90.00 then
            setProperty('Acc.color', getColorFromHex('00EEFF'))
        end
        if Acc < 90.00 then
            setProperty('Acc.color', getColorFromHex('FFFFFF'))
        end
    else
        setTextString('Acc','BOTPLAY')
        setProperty('Acc.color', getColorFromHex('8183FF'))
    end

    setTextString('Misses','Misses:' ..getProperty('songMisses'))
    if getProperty('songMisses') == 0 then
        setProperty('Misses.color', getColorFromHex('DCFF00'))
    end
    if getProperty('songMisses') > 0 then
        setProperty('Misses.color', getColorFromHex('FFFFFF'))
    end

    setTextString('enemy','OPP:' ..dadName)

end
COUNT = 0
BEEP = 0
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if not isSustainNote then
        COUNT = COUNT + 1
        BEEP = getRandomInt(1,100)
    end
    if BEEP == 5 then
        setTextString('TXT','BEEP!')
    elseif BEEP == 10 then
        setTextString('TXT','POP!')
    elseif BEEP == 15 then
        setTextString('TXT','BEE!')
    elseif BEEP == 20 then
        setTextString('TXT','HEY!')
    else
        setTextString('TXT','')
    end
end