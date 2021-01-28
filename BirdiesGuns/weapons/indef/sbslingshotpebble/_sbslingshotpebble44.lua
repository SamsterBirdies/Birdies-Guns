dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head44",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head44"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 140.79088717718207
MetalFireCost = 53
Projectile = "_sbpebble44"
RoundsEachBurst = 44
