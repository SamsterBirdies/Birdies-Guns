dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head34",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head34"
NodeEffects = {}
MinFireSpeed = 12544.0
MaxFireSpeed = 12544.1
EnergyFireCost = 4525.540411414973
MetalFireCost = 95.51487253887123
Projectile = "_sbfirebullet34"
RoundsEachBurst = 11
