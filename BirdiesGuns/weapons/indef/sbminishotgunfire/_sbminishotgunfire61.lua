dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head61",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head61"
NodeEffects = {}
MinFireSpeed = 17080.0
MaxFireSpeed = 17080.1
EnergyFireCost = 10205.205687016472
MetalFireCost = 211.70955145957367
Projectile = "_sbfirebullet61"
RoundsEachBurst = 16
