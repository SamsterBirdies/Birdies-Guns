dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head50",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head50"
NodeEffects = {}
MinFireSpeed = 15232.0
MaxFireSpeed = 15232.1
EnergyFireCost = 7601.5801332842675
MetalFireCost = 158.44454013131173
Projectile = "_sbfirebullet50"
RoundsEachBurst = 14
