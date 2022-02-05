dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head23",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head23"
NodeEffects = {}
MinFireSpeed = 10696.0
MaxFireSpeed = 10696.1
EnergyFireCost = 2812.46219126768
MetalFireCost = 60.46869215723193
Projectile = "_sbfirebullet23"
RoundsEachBurst = 9
