dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head46",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head46"
NodeEffects = {}
MinFireSpeed = 14560.0
MaxFireSpeed = 14560.1
EnergyFireCost = 6759.625180486338
MetalFireCost = 141.2198128526976
Projectile = "_sbfirebullet46"
RoundsEachBurst = 13
