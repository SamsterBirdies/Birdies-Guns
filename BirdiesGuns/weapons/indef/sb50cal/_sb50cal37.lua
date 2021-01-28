dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel37",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel37"
NodeEffects = {}
MinFireSpeed = 16408.0
MaxFireSpeed = 16408.1
EnergyFireCost = 7961.751900955443
MetalFireCost = 187.19404602062994
Projectile = "_sb50cal37"
