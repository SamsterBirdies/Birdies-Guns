dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head18",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head18"
NodeEffects = {}
MinFireSpeed = 9856.0
MaxFireSpeed = 9856.1
EnergyFireCost = 2125.283014143802
MetalFireCost = 46.41037006034648
Projectile = "_sbfirebullet18"
RoundsEachBurst = 9
