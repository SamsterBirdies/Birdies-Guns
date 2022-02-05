dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head26",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head26"
NodeEffects = {}
MinFireSpeed = 11200.0
MaxFireSpeed = 11200.1
EnergyFireCost = 3251.078908069178
MetalFireCost = 69.4419196459954
Projectile = "_sbfirebullet26"
RoundsEachBurst = 10
