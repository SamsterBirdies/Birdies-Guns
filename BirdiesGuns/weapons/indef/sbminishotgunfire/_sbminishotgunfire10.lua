dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head10",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head10"
NodeEffects = {}
MinFireSpeed = 8512.0
MaxFireSpeed = 8512.1
EnergyFireCost = 1130.8109242046892
MetalFireCost = 26.065444861592113
Projectile = "_sbfirebullet10"
RoundsEachBurst = 7
