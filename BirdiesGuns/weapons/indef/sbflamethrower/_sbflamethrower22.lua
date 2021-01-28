dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel22",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel22"
NodeEffects = {}
MinFireSpeed = 9318.0
MaxFireSpeed = 9318.1
EnergyFireCost = 5232.694478039942
MetalFireCost = 93.87228220197062
Projectile = "_sbflames22"
