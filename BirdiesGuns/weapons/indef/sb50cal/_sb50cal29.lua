dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel29",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel29"
NodeEffects = {}
MinFireSpeed = 14984.0
MaxFireSpeed = 14984.1
EnergyFireCost = 5913.178019365738
MetalFireCost = 142.96115723406615
Projectile = "_sb50cal29"
