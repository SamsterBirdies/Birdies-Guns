dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head33",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head33"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 98.64562046651099
MetalFireCost = 42
Projectile = "_sbpebble33"
RoundsEachBurst = 33
