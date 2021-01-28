dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head30",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head30"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 88.3451598782815
MetalFireCost = 39
Projectile = "_sbpebble30"
RoundsEachBurst = 30
