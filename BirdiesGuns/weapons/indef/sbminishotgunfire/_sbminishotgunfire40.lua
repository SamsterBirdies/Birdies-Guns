dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head40",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head40"
NodeEffects = {}
MinFireSpeed = 13552.0
MaxFireSpeed = 13552.1
EnergyFireCost = 5590.663730939899
MetalFireCost = 117.30518167113688
Projectile = "_sbfirebullet40"
RoundsEachBurst = 12
