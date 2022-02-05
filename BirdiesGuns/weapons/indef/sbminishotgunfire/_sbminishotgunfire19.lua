dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head19",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head19"
NodeEffects = {}
MinFireSpeed = 10024.0
MaxFireSpeed = 10024.1
EnergyFireCost = 2258.490561239799
MetalFireCost = 49.13553209253939
Projectile = "_sbfirebullet19"
RoundsEachBurst = 9
