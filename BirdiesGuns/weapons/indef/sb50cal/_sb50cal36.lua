dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel36",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel36"
NodeEffects = {}
MinFireSpeed = 16230.0
MaxFireSpeed = 16230.1
EnergyFireCost = 7691.571102479205
MetalFireCost = 181.3602914664664
Projectile = "_sb50cal36"
