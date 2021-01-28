dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head13",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head13"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 38.21862228524033
MetalFireCost = 22
Projectile = "_sbpebble13"
RoundsEachBurst = 13
