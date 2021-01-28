dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head12",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head12"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 35.661412711621246
MetalFireCost = 21
Projectile = "_sbpebble12"
RoundsEachBurst = 12
