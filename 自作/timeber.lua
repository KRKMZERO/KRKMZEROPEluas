function rgbToHex(r,g,b)
    local rgb = (r * 0x10000) + (g * 0x100) + b
    return string.format("%x", rgb)
end

function onUpdate(elapsed)
    bfColor = getProperty("boyfriend.healthColorArray")
    bfColorHex = rgbToHex(bfColor[1], bfColor[2], bfColor[3])

    dadColor = getProperty("dad.healthColorArray")
    dadColorHex = rgbToHex(dadColor[1], dadColor[2], dadColor[3])

        setTimeBarColors(dadColorHex, bfColorHex)
end