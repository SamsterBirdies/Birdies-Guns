dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head27",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head27"
NodeEffects = {}
MinFireSpeed = 11368.0
MaxFireSpeed = 11368.1
EnergyFireCost = 3401.877016007759
MetalFireCost = 72.52694964046408
Projectile = "_sbfirebullet27"
RoundsEachBurst = 10
