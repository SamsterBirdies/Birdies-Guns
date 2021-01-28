dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head25",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head25"
NodeEffects = {}
MinFireSpeed = 11032.0
MaxFireSpeed = 11032.1
EnergyFireCost = 3102.6007710219596
MetalFireCost = 66.40435165144163
Projectile = "_sbfirebullet25"
