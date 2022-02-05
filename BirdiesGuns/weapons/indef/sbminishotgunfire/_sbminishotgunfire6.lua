dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head6",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head6"
NodeEffects = {}
MinFireSpeed = 7840.0
MaxFireSpeed = 7840.1
EnergyFireCost = 677.9617817606777
MetalFireCost = 16.801050191745162
Projectile = "_sbfirebullet6"
RoundsEachBurst = 7
