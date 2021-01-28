dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head37",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head37"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 113.1464440131195
MetalFireCost = 46
Projectile = "_sbpebble37"
RoundsEachBurst = 37
