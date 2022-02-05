dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel46",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel46"
NodeEffects = {}
MinFireSpeed = 18010.0
MaxFireSpeed = 18010.1
EnergyFireCost = 10591.48596395232
MetalFireCost = 243.9753685748909
Projectile = "_sb50cal46"
RoundsEachBurst = 25
