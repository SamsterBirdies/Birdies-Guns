dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head58",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head58"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 205.95034615123606
MetalFireCost = 67
Projectile = "_sbpebble58"
RoundsEachBurst = 58
