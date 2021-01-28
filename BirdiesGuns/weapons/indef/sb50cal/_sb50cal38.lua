dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel38",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel38"
NodeEffects = {}
MinFireSpeed = 16586.0
MaxFireSpeed = 16586.1
EnergyFireCost = 8236.15427440787
MetalFireCost = 193.11895298970228
Projectile = "_sb50cal38"
