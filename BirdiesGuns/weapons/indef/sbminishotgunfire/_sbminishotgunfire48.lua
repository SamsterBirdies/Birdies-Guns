dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head48",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head48"
NodeEffects = {}
MinFireSpeed = 14896.0
MaxFireSpeed = 14896.1
EnergyFireCost = 7174.076266492866
MetalFireCost = 149.69865949771665
Projectile = "_sbfirebullet48"
RoundsEachBurst = 14
