dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head43",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head43"
NodeEffects = {}
MinFireSpeed = 14056.0
MaxFireSpeed = 14056.1
EnergyFireCost = 6161.554058492164
MetalFireCost = 128.98446470808398
Projectile = "_sbfirebullet43"
RoundsEachBurst = 13
