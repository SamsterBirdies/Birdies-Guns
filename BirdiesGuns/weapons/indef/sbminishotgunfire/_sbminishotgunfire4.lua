dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head4",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head4"
NodeEffects = {}
MinFireSpeed = 7504.0
MaxFireSpeed = 7504.1
EnergyFireCost = 461.85359954833984
MetalFireCost = 12.379905700683594
Projectile = "_sbfirebullet4"
RoundsEachBurst = 6
