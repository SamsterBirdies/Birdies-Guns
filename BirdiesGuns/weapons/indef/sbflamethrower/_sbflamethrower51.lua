dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel51",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel51"
NodeEffects = {}
MinFireSpeed = 13900.0
MaxFireSpeed = 13900.1
EnergyFireCost = 11836.790917875025
MetalFireCost = 183.4993053140182
Projectile = "_sbflames51"
