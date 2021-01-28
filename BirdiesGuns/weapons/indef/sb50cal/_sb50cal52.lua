dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel52",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel52"
NodeEffects = {}
MinFireSpeed = 19078.0
MaxFireSpeed = 19078.1
EnergyFireCost = 12559.939856960304
MetalFireCost = 286.47830337914286
Projectile = "_sb50cal52"
