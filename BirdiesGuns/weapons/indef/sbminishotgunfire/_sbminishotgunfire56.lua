dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head56",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head56"
NodeEffects = {}
MinFireSpeed = 16240.0
MaxFireSpeed = 16240.1
EnergyFireCost = 8966.584421271387
MetalFireCost = 186.36981869471234
Projectile = "_sbfirebullet56"
