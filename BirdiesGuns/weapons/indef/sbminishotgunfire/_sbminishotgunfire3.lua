dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head3",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head3"
NodeEffects = {}
MinFireSpeed = 7336.0
MaxFireSpeed = 7336.1
EnergyFireCost = 356.28662109375
MetalFireCost = 10.22021484375
Projectile = "_sbfirebullet3"
RoundsEachBurst = 6
