dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head11",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head11"
NodeEffects = {}
MinFireSpeed = 8680.0
MaxFireSpeed = 8680.1
EnergyFireCost = 1248.4798448953875
MetalFireCost = 28.47271743755449
Projectile = "_sbfirebullet11"
