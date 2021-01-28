dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head37",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head37"
NodeEffects = {}
MinFireSpeed = 13048.0
MaxFireSpeed = 13048.1
EnergyFireCost = 5045.7189006227
MetalFireCost = 106.15669201273923
Projectile = "_sbfirebullet37"
