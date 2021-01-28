dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head39",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head39"
NodeEffects = {}
MinFireSpeed = 13384.0
MaxFireSpeed = 13384.1
EnergyFireCost = 5406.191981233132
MetalFireCost = 113.53125579927324
Projectile = "_sbfirebullet39"
