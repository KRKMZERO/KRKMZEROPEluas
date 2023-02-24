niconicoTexts = {
   "いいね！",
   "いっけー！",
   "がんばれー！",
   "BF負けんな！",
   "BFの歌声気持ち良すぎだろ！"
}
function onCreatePost()
	if getRandomBool(txtparticleRandom) and mechanic then 
		createTextParticle(niconicoTexts[getRandomInt(1, #niconicoTexts)])
	end
end
function onStepHit()
   section = math.floor(curStep / 16)
   if (section >= 20 and section < 36) or (section >= 38 and section < 102) or (section >= 134 and section < 166)then 
      if curStep % 4 == 0 then 
         if curBeat >= 536 then 
            glowBeat(0.8, crochet/1000)
         else
            glowBeat(0.4, crochet/1000)
         end
      end
   end