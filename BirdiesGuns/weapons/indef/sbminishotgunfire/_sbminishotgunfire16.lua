dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head16",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head16"
NodeEffects = {}
MinFireSpeed = 9520.0
MaxFireSpeed = 9520.1
EnergyFireCost = 1864.9844321734943
MetalFireCost = 41.085177696373776
Projectile = "_sbfirebullet16"
RoundsEachBurst = 8
