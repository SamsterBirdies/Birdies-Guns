dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head30",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head30"
NodeEffects = {}
MinFireSpeed = 11872.0
MaxFireSpeed = 11872.1
EnergyFireCost = 3868.556501469157
MetalFireCost = 82.07428567891101
Projectile = "_sbfirebullet30"
