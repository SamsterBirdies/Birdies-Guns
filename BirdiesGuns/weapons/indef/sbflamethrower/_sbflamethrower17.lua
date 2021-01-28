dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel17",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel17"
NodeEffects = {}
MinFireSpeed = 8528.0
MaxFireSpeed = 8528.1
EnergyFireCost = 4364.984494195439
MetalFireCost = 82.0962181355095
Projectile = "_sbflames17"
