dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head35",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head35"
NodeEffects = {}
MinFireSpeed = 12712.0
MaxFireSpeed = 12712.1
EnergyFireCost = 4696.251980343332
MetalFireCost = 99.00729242229109
Projectile = "_sbfirebullet35"
