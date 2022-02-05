dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head38",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head38"
NodeEffects = {}
MinFireSpeed = 13216.0
MaxFireSpeed = 13216.1
EnergyFireCost = 5224.558258444929
MetalFireCost = 109.81539032543827
Projectile = "_sbfirebullet38"
RoundsEachBurst = 12
