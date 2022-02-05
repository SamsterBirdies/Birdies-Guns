dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head57",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head57"
NodeEffects = {}
MinFireSpeed = 16408.0
MaxFireSpeed = 16408.1
EnergyFireCost = 9206.687302853752
MetalFireCost = 191.28184711181723
Projectile = "_sbfirebullet57"
RoundsEachBurst = 15
