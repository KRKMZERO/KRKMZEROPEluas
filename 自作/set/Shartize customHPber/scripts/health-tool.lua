local textureResources = {
    ["healthback"] = {file="healthBarFrame",ofs={x=0,y=0},top=true},
    ["healthb"] = {file="healthBarWhiteA",ofs={x=0,y=0},top=true},
    ["healths"] = {file="healthBarWhiteA",ofs={x=0,y=0},top=true},
}
local graphictag = "CustomHP";
local healthbarimageMax = 0;
local healthofset = {x=0,y=300};
local healthwidthofs = 199;
local iconofs = 20;

local tempcharactername = {bf=0,dad=0,gf=0}

function onCreatePost()
    MakeSpritecode("healthback",0,healthofset.x,healthofset.y)
    MakeSpritecode("healths",0,healthofset.x,healthofset.y)
    MakeSpritecode("healthb",0,healthofset.x,healthofset.y)
    if downscroll then
        setProperty(graphictag..'healthback.y',-(healthofset.y*0.95)+(screenHeight/2)-(getProperty(graphictag..'healthback._frame.frame.height')/2))

        setProperty(graphictag..'healths.y',-(healthofset.y*0.95)+(screenHeight/2)-(getProperty(graphictag..'healths._frame.frame.height')/2))
        setProperty(graphictag..'healthb.y',-(healthofset.y*0.95)+(screenHeight/2)-(getProperty(graphictag..'healthb._frame.frame.height')/2))
    else
        setProperty(graphictag..'healthback.y',healthofset.y+(screenHeight/2)-(getProperty(graphictag..'healthback._frame.frame.height')/2))

        setProperty(graphictag..'healths.y',healthofset.y+(screenHeight/2)-(getProperty(graphictag..'healths._frame.frame.height')/2))
        setProperty(graphictag..'healthb.y',healthofset.y+(screenHeight/2)-(getProperty(graphictag..'healthb._frame.frame.height')/2))
    end
    --setProperty(graphictag..'healths.origin.x',getProperty(graphictag..'healths._frame.frame.width'))
    setProperty(graphictag..'healthback.x',healthofset.x+(screenWidth/2)-(getProperty(graphictag..'healthback._frame.frame.width')/2))
    
    setProperty(graphictag..'healths.x',healthofset.x+(screenWidth/2)-(getProperty(graphictag..'healths._frame.frame.width')/2))

    setProperty(graphictag..'healthb.x',healthofset.x+(screenWidth/2)-(getProperty(graphictag..'healthb._frame.frame.width')/2))
    healthbarimageMax = (getProperty(graphictag..'healthb._frame.frame.width'))-(healthwidthofs*2)
    setProperty('healthBarBG.alpha', 0)
    setProperty('healthBarBG.scale.x', 0.8)
    setProperty('healthBar.alpha', 0)
    setObjectOrder(graphictag..'healthback', getObjectOrder('healthBar'))
    setObjectOrder(graphictag..'healths', getObjectOrder('healthBar'))
    setObjectOrder(graphictag..'healthb', getObjectOrder('healthBar'))

    setProperty(graphictag..'healthb.color', getColorFromHex(RGBtoHex(getProperty('dad.healthColorArray'))))
    setProperty(graphictag..'healths.color', getColorFromHex(RGBtoHex(getProperty('boyfriend.healthColorArray'))))
end

function onChangeChardata(charname)
    --debugPrint(charname)
    if charname == "bf" then
        tempcharactername.bf = boyfriendName;
        setProperty(graphictag..'healths.color', getColorFromHex(RGBtoHex(getProperty('boyfriend.healthColorArray'))))
    end
    if charname == "dad" then
        tempcharactername.dad = dadName;
        setProperty(graphictag..'healthb.color', getColorFromHex(RGBtoHex(getProperty('dad.healthColorArray'))))
    end
end

function onUpdatePost()
    if boyfriendName ~= tempcharactername.bf then
        onChangeChardata("bf")
    end
    if dadName ~= tempcharactername.dad then
        onChangeChardata("dad")
    end

    temphealth = getProperty('health');
    healthspace = 2;
    temphealthwidth = string.format('%0.2f', temphealth)/2;

    setProperty('iconP1.origin.x', 0);
    setProperty('iconP2.origin.x', getProperty('iconP2._frame.frame.width'));
    local tempframe = (healthbarimageMax*temphealthwidth);
    --debugPrint(tempframe.." "..healthbarimageMax)
    if tempframe >= healthbarimageMax then
        setProperty(graphictag..'healths._frame.frame.width', (healthwidthofs*2)+tempframe-((healthbarimageMax*temphealthwidth) % healthspace))
        setProperty(graphictag..'healths.x', getProperty(graphictag..'healthb.x'))
        setProperty(graphictag..'healths._frame.frame.x',0)
    
        setProperty(graphictag..'healthb.visible', false)
        setProperty(graphictag..'healths.visible', true)

        setProperty('iconP2.x', getProperty(graphictag..'healthb.x')+(healthwidthofs-getProperty('iconP2._frame.frame.width')+iconofs))
        setProperty('iconP1.x', getProperty(graphictag..'healthb.x')+healthwidthofs-iconofs)
    elseif tempframe <= 0 then
        setProperty(graphictag..'healthb.visible', true)
        setProperty(graphictag..'healths.visible', false)

        setProperty(graphictag..'healthb._frame.frame.width', (healthwidthofs*2)+healthbarimageMax)

        setProperty('iconP2.x', getProperty(graphictag..'healthb.x')+(healthwidthofs+healthbarimageMax-getProperty('iconP2._frame.frame.width')+iconofs))
        setProperty('iconP1.x', getProperty(graphictag..'healthb.x')+healthwidthofs+healthbarimageMax-iconofs)
    else
        setProperty(graphictag..'healthb.visible', true)
        setProperty(graphictag..'healths.visible', true)

        setProperty(graphictag..'healths._frame.frame.width', healthwidthofs+tempframe-((healthbarimageMax*temphealthwidth) % healthspace))
        setProperty(graphictag..'healths.x', getProperty(graphictag..'healthb.x')+(healthwidthofs+healthbarimageMax-(tempframe-((healthbarimageMax*temphealthwidth) % healthspace))))
        setProperty(graphictag..'healths._frame.frame.x',healthwidthofs+healthbarimageMax-(tempframe-((healthbarimageMax*temphealthwidth) % healthspace)))

        setProperty(graphictag..'healthb._frame.frame.width', healthwidthofs+healthbarimageMax-(tempframe-((healthbarimageMax*temphealthwidth) % healthspace)))

        setProperty('iconP2.x', getProperty(graphictag..'healthb.x')+(healthwidthofs+healthbarimageMax-(tempframe-((healthbarimageMax*temphealthwidth) % healthspace)))-getProperty('iconP2._frame.frame.width')+iconofs)
    setProperty('iconP1.x', getProperty(graphictag..'healthb.x')+healthwidthofs+healthbarimageMax-(tempframe-((healthbarimageMax*temphealthwidth) % healthspace))-iconofs)
    end
end


function MakeSpritecode(tag,x,y)
    makeLuaSprite(graphictag..tag,textureResources[tag].file,textureResources[tag].ofs.x+x,textureResources[tag].ofs.y+y)
    addLuaSprite(graphictag..tag,textureResources[tag].top)
    setObjectCamera(graphictag..tag, 'camHUD')
end

function RGBtoHex(RGB) 
	Decimal1 = math.floor(RGB[1]/16)
	Decimal2 = ((RGB[1]/16)%1)*16
 
	Decimal3 = math.floor(RGB[2]/16)
	Decimal4 = ((RGB[2]/16)%1)*16
 
	Decimal5 = math.floor(RGB[3]/16)
	Decimal6 = ((RGB[3]/16)%1)*16
 
	LetterValues = 'ABCDEF'
 
	if Decimal1 == 10 then
		Decimal1 = string.sub(LetterValues, 1,1)
	elseif Decimal1 == 11 then
		Decimal1 = string.sub(LetterValues, 2,2)
	elseif Decimal1 == 12 then
		Decimal1 = string.sub(LetterValues, 3,3)
	elseif Decimal1 == 13 then
		Decimal1 = string.sub(LetterValues, 4,4)
	elseif Decimal1 == 14 then
		Decimal1 = string.sub(LetterValues, 5,5)
	elseif Decimal1 == 15 then
		Decimal1 = string.sub(LetterValues, 6,6)
	end
	if Decimal2 == 10 then
		Decimal2 = string.sub(LetterValues, 1,1)
	elseif Decimal2 == 11 then
		Decimal2 = string.sub(LetterValues, 2,2)
	elseif Decimal2 == 12 then
		Decimal2 = string.sub(LetterValues, 3,3)
	elseif Decimal2 == 13 then
		Decimal2 = string.sub(LetterValues, 4,4)
	elseif Decimal2 == 14 then
		Decimal2 = string.sub(LetterValues, 5,5)
	elseif Decimal2 == 15 then
		Decimal2 = string.sub(LetterValues, 6,6)
	end
	if Decimal3 == 10 then
		Decimal3 = string.sub(LetterValues, 1,1)
	elseif Decimal3 == 11 then
		Decimal3 = string.sub(LetterValues, 2,2)
	elseif Decimal3 == 12 then
		Decimal3 = string.sub(LetterValues, 3,3)
	elseif Decimal3 == 13 then
		Decimal3 = string.sub(LetterValues, 4,4)
	elseif Decimal3 == 14 then
		Decimal3 = string.sub(LetterValues, 5,5)
	elseif Decimal3 == 15 then
		Decimal3 = string.sub(LetterValues, 6,6)
	end
	if Decimal4 == 10 then
		Decimal4 = string.sub(LetterValues, 1,1)
	elseif Decimal4 == 11 then
		Decimal4 = string.sub(LetterValues, 2,2)
	elseif Decimal4 == 12 then
		Decimal4 = string.sub(LetterValues, 3,3)
	elseif Decimal4 == 13 then
		Decimal4 = string.sub(LetterValues, 4,4)
	elseif Decimal4 == 14 then
		Decimal4 = string.sub(LetterValues, 5,5)
	elseif Decimal4 == 15 then
		Decimal4 = string.sub(LetterValues, 6,6)
	end
	if Decimal5 == 10 then
		Decimal5 = string.sub(LetterValues, 1,1)
	elseif Decimal5 == 11 then
		Decimal5 = string.sub(LetterValues, 2,2)
	elseif Decimal5 == 12 then
		Decimal5 = string.sub(LetterValues, 3,3)
	elseif Decimal5 == 13 then
		Decimal5 = string.sub(LetterValues, 4,4)
	elseif Decimal5 == 14 then
		Decimal5 = string.sub(LetterValues, 5,5)
	elseif Decimal5 == 15 then
		Decimal5 = string.sub(LetterValues, 6,6)
	end
	if Decimal6 == 10 then
		Decimal6 = string.sub(LetterValues, 1,1)
	elseif Decimal6 == 11 then
		Decimal6 = string.sub(LetterValues, 2,2)
	elseif Decimal6 == 12 then
		Decimal6 = string.sub(LetterValues, 3,3)
	elseif Decimal6 == 13 then
		Decimal6 = string.sub(LetterValues, 4,4)
	elseif Decimal6 == 14 then
		Decimal6 = string.sub(LetterValues, 5,5)
	elseif Decimal6 == 15 then
		Decimal6 = string.sub(LetterValues, 6,6)
	end
		Hex1 = Decimal1
		Hex2 = Decimal2
		Hex3 = Decimal3
		Hex4 = Decimal4
		Hex5 = Decimal5
		Hex6 = Decimal6
		local HexCode = table.concat{Hex1,Hex2,Hex3,Hex4,Hex5,Hex6}
	return HexCode
end