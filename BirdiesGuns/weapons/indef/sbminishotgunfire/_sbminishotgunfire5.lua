dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head5",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head5"
NodeEffects = {}
MinFireSpeed = 7672.0
MaxFireSpeed = 7672.1
EnergyFireCost = 569.0700620412827
MetalFireCost = 14.573341727256775
Projectile = "_sbfirebullet5"
