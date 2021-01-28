dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head33",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head33"
NodeEffects = {}
MinFireSpeed = 12376.0
MaxFireSpeed = 12376.1
EnergyFireCost = 4357.455174316281
MetalFireCost = 92.07618219211936
Projectile = "_sbfirebullet33"
