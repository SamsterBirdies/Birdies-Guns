dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head32",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head32"
NodeEffects = {}
MinFireSpeed = 12208.0
MaxFireSpeed = 12208.1
EnergyFireCost = 4191.955863942185
MetalFireCost = 88.69039477377906
Projectile = "_sbfirebullet32"
RoundsEachBurst = 11
