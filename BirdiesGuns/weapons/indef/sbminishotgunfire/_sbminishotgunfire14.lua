dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head14",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head14"
NodeEffects = {}
MinFireSpeed = 9184.0
MaxFireSpeed = 9184.1
EnergyFireCost = 1612.6334282089072
MetalFireCost = 35.92257700457917
Projectile = "_sbfirebullet14"
