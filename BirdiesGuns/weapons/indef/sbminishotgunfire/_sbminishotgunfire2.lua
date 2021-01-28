dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head2",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head2"
NodeEffects = {}
MinFireSpeed = 7168.0
MaxFireSpeed = 7168.1
EnergyFireCost = 252.34375
MetalFireCost = 8.09375
Projectile = "_sbfirebullet2"
