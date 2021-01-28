dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel21",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel21"
NodeEffects = {}
MinFireSpeed = 9160.0
MaxFireSpeed = 9160.1
EnergyFireCost = 5053.729947608558
MetalFireCost = 91.44347786040184
Projectile = "_sbflames21"
