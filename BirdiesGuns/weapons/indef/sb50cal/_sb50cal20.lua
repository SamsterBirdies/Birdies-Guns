dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel20",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel20"
NodeEffects = {}
MinFireSpeed = 13382.0
MaxFireSpeed = 13382.1
EnergyFireCost = 3892.7456086113993
MetalFireCost = 99.33590020583819
Projectile = "_sb50cal20"
RoundsEachBurst = 16
