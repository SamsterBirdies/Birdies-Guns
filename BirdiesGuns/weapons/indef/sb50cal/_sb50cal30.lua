dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel30",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel30"
NodeEffects = {}
MinFireSpeed = 15162.0
MaxFireSpeed = 15162.1
EnergyFireCost = 6155.571425918328
MetalFireCost = 148.19492531584842
Projectile = "_sb50cal30"
