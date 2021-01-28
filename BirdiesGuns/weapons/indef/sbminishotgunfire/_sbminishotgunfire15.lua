dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head15",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head15"
NodeEffects = {}
MinFireSpeed = 9352.0
MaxFireSpeed = 9352.1
EnergyFireCost = 1737.8308255246714
MetalFireCost = 38.48386727027572
Projectile = "_sbfirebullet15"
