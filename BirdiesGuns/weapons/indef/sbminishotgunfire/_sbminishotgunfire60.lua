dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head60",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head60"
NodeEffects = {}
MinFireSpeed = 16912.0
MaxFireSpeed = 16912.1
EnergyFireCost = 9949.740984139296
MetalFireCost = 206.48325066788792
Projectile = "_sbfirebullet60"
RoundsEachBurst = 16
