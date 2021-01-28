dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head21",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head21"
NodeEffects = {}
MinFireSpeed = 10360.0
MaxFireSpeed = 10360.1
EnergyFireCost = 2531.18228057572
MetalFireCost = 54.71426344994603
Projectile = "_sbfirebullet21"
