dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head41",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head41"
NodeEffects = {}
MinFireSpeed = 13720.0
MaxFireSpeed = 13720.1
EnergyFireCost = 5778.017851735835
MetalFireCost = 121.13807513474839
Projectile = "_sbfirebullet41"
RoundsEachBurst = 12
