dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head7",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head7"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 23.453523812961066
MetalFireCost = 16
Projectile = "_sbpebble7"
RoundsEachBurst = 7
