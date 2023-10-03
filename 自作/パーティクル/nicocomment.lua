local niconicoTexts = {
   "いいね!",
   "いっけー!",
   "がんばれー!",
   "BF負けんな!",
   "BFの歌声気持ち良すぎだろ!",
   "okayu!",
   "粥!",
   "もぐもぐ～",
}
local ys = {
   "0",
   "20",
   "40",
   "60",
   "80",
   "100",
   "120",
   "140",
   "160",
   "180",
   "200",
   "220",
   "240",
   "260",
   "280",
   "300",
   "320",
   "340",
   "360",
   "380",
   "400",
   "420",
   "440",
   "460",
   "480",
   "500",
   "520",
   "540",
   "560",
   "580",
   "600",
   "620",
   "640",
   "660",
   "680",
   "700",
} 
C = 1
function onStepHit()
   if math.random(1,10) == 1 then
      --debugPrint('OK')
      C = C + 1
	   makeLuaText('niconicocoments'..C,niconicoTexts[getRandomInt(1, #niconicoTexts)],500,screenWidth,ys[getRandomInt(1, #ys)]);
	   setTextAlignment("niconicocoments"..C, "left")
	   setTextSize('niconicocoments'..C, 20);
      setObjectCamera('niconicocoments'..C, 'other');
      Sepeed = getRandomInt(5,15)
      doTweenX("niconicocomentsT"..C,"niconicocoments"..C,-500,Sepeed,'linear')
	   addLuaText('niconicocoments'..C)
   end
end
function onTweenCompleted(tag)
   if tag == 'niconicocomentsT'..C then
      removeLuaText('niconicocoments'..C,false)
   end
end