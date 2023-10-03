local GFscale = 1
local BFscale = 1
local DADscale = 1
function onCreatePost()
	setProperty('gfGroup.scale.x', GFscale);
	setProperty('gfGroup.scale.y', GFscale);

    setProperty('boyfriendGroup.scale.x', BFscale);
	setProperty('boyfriendGroup.scale.y', Bfscale);

    setProperty('dadGroup.scale.x', DADscale);
	setProperty('dadGroup.scale.y', DADscale);
end