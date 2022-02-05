dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head58",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head58"
NodeEffects = {}
MinFireSpeed = 16576.0
MaxFireSpeed = 16576.1
EnergyFireCost = 9450.541791960843
MetalFireCost = 196.27062597293937
Projectile = "_sbfirebullet58"
RoundsEachBurst = 15
