dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head13",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head13"
NodeEffects = {}
MinFireSpeed = 9016.0
MaxFireSpeed = 9016.1
EnergyFireCost = 1489.362144698001
MetalFireCost = 33.40069120450872
Projectile = "_sbfirebullet13"
