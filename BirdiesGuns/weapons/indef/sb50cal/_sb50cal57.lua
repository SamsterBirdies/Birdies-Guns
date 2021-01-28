dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel57",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel57"
NodeEffects = {}
MinFireSpeed = 19968.0
MaxFireSpeed = 19968.1
EnergyFireCost = 14346.13853338629
MetalFireCost = 325.0459762930174
Projectile = "_sb50cal57"
