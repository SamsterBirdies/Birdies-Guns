dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head56",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head56"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 195.7539923870918
MetalFireCost = 65
Projectile = "_sbpebble56"
RoundsEachBurst = 56
