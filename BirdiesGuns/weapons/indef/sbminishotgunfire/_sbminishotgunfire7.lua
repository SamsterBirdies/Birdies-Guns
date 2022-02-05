dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head7",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head7"
NodeEffects = {}
MinFireSpeed = 8008.0
MaxFireSpeed = 8008.1
EnergyFireCost = 788.5549346006883
MetalFireCost = 19.06356660099118
Projectile = "_sbfirebullet7"
RoundsEachBurst = 7
