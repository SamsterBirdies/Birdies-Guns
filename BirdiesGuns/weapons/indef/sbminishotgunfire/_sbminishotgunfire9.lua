dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head9",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head9"
NodeEffects = {}
MinFireSpeed = 8344.0
MaxFireSpeed = 8344.1
EnergyFireCost = 1014.9522946015401
MetalFireCost = 23.69520724833685
Projectile = "_sbfirebullet9"
