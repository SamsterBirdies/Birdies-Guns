dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head54",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head54"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 185.8689592467522
MetalFireCost = 63
Projectile = "_sbpebble54"
RoundsEachBurst = 54
