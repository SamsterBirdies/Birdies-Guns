dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head12",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head12"
NodeEffects = {}
MinFireSpeed = 8848.0
MaxFireSpeed = 8848.1
EnergyFireCost = 1367.9873424718778
MetalFireCost = 30.91760364751628
Projectile = "_sbfirebullet12"
RoundsEachBurst = 8
