dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head54",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head54"
NodeEffects = {}
MinFireSpeed = 15904.0
MaxFireSpeed = 15904.1
EnergyFireCost = 8497.403500479906
MetalFireCost = 176.77130825409273
Projectile = "_sbfirebullet54"
RoundsEachBurst = 15
