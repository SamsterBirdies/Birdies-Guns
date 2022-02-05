dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head59",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head59"
NodeEffects = {}
MinFireSpeed = 16744.0
MaxFireSpeed = 16744.1
EnergyFireCost = 9698.20650746023
MetalFireCost = 201.33735450376656
Projectile = "_sbfirebullet59"
RoundsEachBurst = 15
