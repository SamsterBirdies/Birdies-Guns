dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel13",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel13"
NodeEffects = {}
MinFireSpeed = 12136.0
MaxFireSpeed = 12136.1
EnergyFireCost = 2505.0518403381543
MetalFireCost = 69.3727611296895
Projectile = "_sb50cal13"
