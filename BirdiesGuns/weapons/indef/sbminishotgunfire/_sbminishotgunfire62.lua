dofile(path .. "/weapons/sbminishotgun/sbminishotgunfire.lua")
Sprites={{Name = "sbminishotgunfire-head62",States={Normal={Frames={{texture= path .. "/weapons/sbminishotgun/headfire.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbminishotgunfire-head62"
NodeEffects = {}
MinFireSpeed = 17248.0
MaxFireSpeed = 17248.1
EnergyFireCost = 10464.662025876105
MetalFireCost = 217.0175132011295
Projectile = "_sbfirebullet62"
RoundsEachBurst = 16
