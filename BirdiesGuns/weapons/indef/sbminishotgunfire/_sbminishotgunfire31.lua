dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head31",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head31"
NodeEffects = {}
MinFireSpeed = 12040.0
MaxFireSpeed = 12040.1
EnergyFireCost = 4029.0026968046127
MetalFireCost = 85.356696392644
Projectile = "_sbfirebullet31"
