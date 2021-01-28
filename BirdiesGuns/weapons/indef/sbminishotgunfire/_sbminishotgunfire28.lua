dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head28",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head28"
NodeEffects = {}
MinFireSpeed = 11536.0
MaxFireSpeed = 11536.1
EnergyFireCost = 3555.03134438288
MetalFireCost = 75.66018322859634
Projectile = "_sbfirebullet28"
