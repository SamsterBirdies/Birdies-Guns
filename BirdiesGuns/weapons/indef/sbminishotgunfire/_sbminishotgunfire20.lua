dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head20",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head20"
NodeEffects = {}
MinFireSpeed = 10192.0
MaxFireSpeed = 10192.1
EnergyFireCost = 2393.7794762591707
MetalFireCost = 51.90327478148532
Projectile = "_sbfirebullet20"
