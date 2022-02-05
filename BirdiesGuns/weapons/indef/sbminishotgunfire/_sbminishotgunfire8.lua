dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head8",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head8"
NodeEffects = {}
MinFireSpeed = 8176.0
MaxFireSpeed = 8176.1
EnergyFireCost = 900.876105453824
MetalFireCost = 21.361434829131667
Projectile = "_sbfirebullet8"
RoundsEachBurst = 7
