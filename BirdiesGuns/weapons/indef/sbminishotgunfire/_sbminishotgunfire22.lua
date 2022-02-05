dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head22",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head22"
NodeEffects = {}
MinFireSpeed = 10528.0
MaxFireSpeed = 10528.1
EnergyFireCost = 2670.7320037097156
MetalFireCost = 57.56917381635144
Projectile = "_sbfirebullet22"
RoundsEachBurst = 9
