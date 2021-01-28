dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel12",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel12"
NodeEffects = {}
MinFireSpeed = 7738.0
MaxFireSpeed = 7738.1
EnergyFireCost = 3561.9990346204236
MetalFireCost = 71.19855832699145
Projectile = "_sbflames12"
