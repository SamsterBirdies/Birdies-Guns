dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head36",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head36"
NodeEffects = {}
MinFireSpeed = 12880.0
MaxFireSpeed = 12880.1
EnergyFireCost = 4869.630917536197
MetalFireCost = 102.55428136638939
Projectile = "_sbfirebullet36"
RoundsEachBurst = 12
