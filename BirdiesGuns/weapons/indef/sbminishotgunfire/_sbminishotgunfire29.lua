dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head29",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head29"
NodeEffects = {}
MinFireSpeed = 11704.0
MaxFireSpeed = 11704.1
EnergyFireCost = 3710.5787091388625
MetalFireCost = 78.84237359154315
Projectile = "_sbfirebullet29"
