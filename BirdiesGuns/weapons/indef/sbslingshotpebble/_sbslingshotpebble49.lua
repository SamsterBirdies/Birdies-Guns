dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head49",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head49"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 162.456736904678
MetalFireCost = 58
Projectile = "_sbpebble49"
RoundsEachBurst = 49
