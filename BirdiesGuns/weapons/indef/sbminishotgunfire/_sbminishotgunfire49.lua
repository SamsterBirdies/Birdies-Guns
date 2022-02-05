dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head49",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head49"
NodeEffects = {}
MinFireSpeed = 15064.0
MaxFireSpeed = 15064.1
EnergyFireCost = 7386.171208156818
MetalFireCost = 154.03770105236848
Projectile = "_sbfirebullet49"
RoundsEachBurst = 14
