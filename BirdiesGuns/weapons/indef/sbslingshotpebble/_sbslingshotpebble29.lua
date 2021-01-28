dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head29",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head29"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 85.01677280323102
MetalFireCost = 38
Projectile = "_sbpebble29"
RoundsEachBurst = 29
