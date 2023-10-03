local rollgain = 0
local enemygain = 0

local longnote = 2
local normalnote = 10

function onCreate()
		setProperty('healthGain',0)
		setProperty('healthLoss',0)
end
function onCreatePost()
	makeLuaText('Text001',"- " ..getProperty(songName).. " -",500,0,0); -- x y values go on the second and third 0's
	setTextSize('Text001', 25);
	addLuaText('Text001')
	screenCenter('Text001', 'x')
	setProperty('Text001.y', 680)
	--setProperty('Text001.color', getColorFromHex('FFFFFF'))--字体の色です
	--setTextBorder('Text001','2','000000')--縁取りの色です
	setObjectCamera('Text001', 'other')--hud or other
	setProperty('Text001.alpha', 0.5)
	setProperty('Text001.antialiasing', true)
	setObjectOrder('Text001', 2)

end
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
   if noteData == 0 and not isSustainNote then
      rollgain = rollgain + normalnote
   end
   if noteData == 1 and not isSustainNote then
      rollgain = rollgain + normalnote
   end
   if noteData == 2 and not isSustainNote then
      rollgain = rollgain + normalnote
   end
   if noteData == 3 and not isSustainNote then
      rollgain = rollgain + normalnote
   end



   if noteData == 0 and isSustainNote then
      rollgain = rollgain + longnote
   end
   if noteData == 1 and isSustainNote then
      rollgain = rollgain + longnote
   end
   if noteData == 2 and isSustainNote then
      rollgain = rollgain + longnote
   end
   if noteData == 3 and isSustainNote then
      rollgain = rollgain + longnote
   end

end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
   if noteData == 0 and not isSustainNote then
      enemygain = enemygain + normalnote
   end
   if noteData == 1 and not isSustainNote then
      enemygain = enemygain + normalnote
   end
   if noteData == 2 and not isSustainNote then
      enemygain = enemygain + normalnote
   end
   if noteData == 3 and not isSustainNote then
      enemygain = enemygain + normalnote
   end



   if noteData == 0 and isSustainNote then
      enemygain = enemygain + longnote
   end
   if noteData == 1 and isSustainNote then
      enemygain = enemygain + longnote
   end
   if noteData == 2 and isSustainNote then
      enemygain = enemygain + longnote
   end
   if noteData == 3 and isSustainNote then
      enemygain = enemygain + longnote
   end
end

function noteMiss(membersIndex, noteData, noteType, isSustainNote)
   if getProperty('health') <= 0.05 then
      setProperty('health', getProperty('health') - 0.10 );
   end
end
function onUpdate(elapsed)
   setTextString('Text001', rollgain..' '..enemygain);

      if rollgain >= 1 then
         rollgain = rollgain - 1
         setProperty('health', getProperty('health') + 0.005 );--ここの数字を調整しよう！
      end
      if enemygain >= 1 then
         enemygain = enemygain - 1
         if getProperty('health') > 0.05 then
            setProperty('health', getProperty('health') - 0.005 );--ここの数字を調整しよう！
         end
      end
end