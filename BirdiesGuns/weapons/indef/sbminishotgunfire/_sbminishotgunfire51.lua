dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head51",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head51"
NodeEffects = {}
MinFireSpeed = 15400.0
MaxFireSpeed = 15400.1
EnergyFireCost = 7820.354822866834
MetalFireCost = 162.92023607086347
Projectile = "_sbfirebullet51"
