dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel5",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel5"
NodeEffects = {}
MinFireSpeed = 6632.0
MaxFireSpeed = 6632.1
EnergyFireCost = 2537.433362007141
MetalFireCost = 57.29373848438263
Projectile = "_sbflames5"
