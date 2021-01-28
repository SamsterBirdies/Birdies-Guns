dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head21",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head21"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 60.16842056785488
MetalFireCost = 30
Projectile = "_sbpebble21"
RoundsEachBurst = 21
