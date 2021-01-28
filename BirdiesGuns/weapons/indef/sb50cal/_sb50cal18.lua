dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel18",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel18"
NodeEffects = {}
MinFireSpeed = 13026.0
MaxFireSpeed = 13026.1
EnergyFireCost = 3480.7777545259864
MetalFireCost = 90.44067390369543
Projectile = "_sb50cal18"
