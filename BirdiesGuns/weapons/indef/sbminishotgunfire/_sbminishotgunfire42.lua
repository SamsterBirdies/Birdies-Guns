dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head42",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head42"
NodeEffects = {}
MinFireSpeed = 13888.0
MaxFireSpeed = 13888.1
EnergyFireCost = 5968.2993806692075
MetalFireCost = 125.03085755872884
Projectile = "_sbfirebullet42"
RoundsEachBurst = 13
