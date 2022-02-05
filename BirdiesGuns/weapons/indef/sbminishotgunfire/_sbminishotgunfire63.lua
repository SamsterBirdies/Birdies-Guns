dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head63",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head63"
NodeEffects = {}
MinFireSpeed = 17416.0
MaxFireSpeed = 17416.1
EnergyFireCost = 10728.17237003042
MetalFireCost = 222.40841184489716
Projectile = "_sbfirebullet63"
RoundsEachBurst = 16
