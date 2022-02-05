dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head64",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head64"
NodeEffects = {}
MinFireSpeed = 17584.0
MaxFireSpeed = 17584.1
EnergyFireCost = 10995.800063312145
MetalFireCost = 227.88354327997368
Projectile = "_sbfirebullet64"
RoundsEachBurst = 16
