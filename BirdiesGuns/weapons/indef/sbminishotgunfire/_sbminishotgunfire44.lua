dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head44",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head44"
NodeEffects = {}
MinFireSpeed = 14224.0
MaxFireSpeed = 14224.1
EnergyFireCost = 6357.828340656104
MetalFireCost = 132.9998469691478
Projectile = "_sbfirebullet44"
RoundsEachBurst = 13
