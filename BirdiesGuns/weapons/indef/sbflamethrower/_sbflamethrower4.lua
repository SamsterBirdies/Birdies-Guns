dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel4",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel4"
NodeEffects = {}
MinFireSpeed = 6474.0
MaxFireSpeed = 6474.1
EnergyFireCost = 2399.9343872070312
MetalFireCost = 55.42768096923828
Projectile = "_sbflames4"
