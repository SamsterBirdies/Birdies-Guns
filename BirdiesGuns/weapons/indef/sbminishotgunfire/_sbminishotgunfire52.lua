dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head52",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head52"
NodeEffects = {}
MinFireSpeed = 15568.0
MaxFireSpeed = 15568.1
EnergyFireCost = 8042.547866974129
MetalFireCost = 167.46586475947072
Projectile = "_sbfirebullet52"
