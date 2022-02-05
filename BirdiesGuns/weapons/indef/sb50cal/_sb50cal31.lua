dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel31",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel31"
NodeEffects = {}
MinFireSpeed = 15340.0
MaxFireSpeed = 15340.1
EnergyFireCost = 6401.7522294483015
MetalFireCost = 153.51047102390856
Projectile = "_sb50cal31"
RoundsEachBurst = 20
