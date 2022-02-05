dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head24",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head24"
NodeEffects = {}
MinFireSpeed = 10864.0
MaxFireSpeed = 10864.1
EnergyFireCost = 2956.406913006237
MetalFireCost = 63.41351547218868
Projectile = "_sbfirebullet24"
RoundsEachBurst = 10
