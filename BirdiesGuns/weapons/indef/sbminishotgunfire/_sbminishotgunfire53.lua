dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head53",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head53"
NodeEffects = {}
MinFireSpeed = 15736.0
MaxFireSpeed = 15736.1
EnergyFireCost = 8268.2126773956
MetalFireCost = 172.08251889633746
Projectile = "_sbfirebullet53"
