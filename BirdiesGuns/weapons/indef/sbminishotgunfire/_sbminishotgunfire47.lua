dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head47",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head47"
NodeEffects = {}
MinFireSpeed = 14728.0
MaxFireSpeed = 14728.1
EnergyFireCost = 6965.244323931437
MetalFireCost = 145.426372428521
Projectile = "_sbfirebullet47"
RoundsEachBurst = 13
