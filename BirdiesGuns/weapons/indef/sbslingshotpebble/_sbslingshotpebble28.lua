dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head28",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head28"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 81.73959168318132
MetalFireCost = 37
Projectile = "_sbpebble28"
RoundsEachBurst = 28
