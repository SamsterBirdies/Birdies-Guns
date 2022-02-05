dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head17",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head17"
NodeEffects = {}
MinFireSpeed = 9688.0
MaxFireSpeed = 9688.1
EnergyFireCost = 1994.1248139262052
MetalFireCost = 43.727133597879615
Projectile = "_sbfirebullet17"
RoundsEachBurst = 8
