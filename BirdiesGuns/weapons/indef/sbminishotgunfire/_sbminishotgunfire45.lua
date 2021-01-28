dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head45",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head45"
NodeEffects = {}
MinFireSpeed = 14392.0
MaxFireSpeed = 14392.1
EnergyFireCost = 6557.169408478856
MetalFireCost = 137.07796957804072
Projectile = "_sbfirebullet45"
