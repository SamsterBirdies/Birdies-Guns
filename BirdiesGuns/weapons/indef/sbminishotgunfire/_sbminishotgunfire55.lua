dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head55",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head55"
NodeEffects = {}
MinFireSpeed = 16072.0
MaxFireSpeed = 16072.1
EnergyFireCost = 8730.175430174904
MetalFireCost = 181.53335994556292
Projectile = "_sbfirebullet55"
