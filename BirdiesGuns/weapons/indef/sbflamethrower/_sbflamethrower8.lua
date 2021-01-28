dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel8",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel8"
NodeEffects = {}
MinFireSpeed = 7106.0
MaxFireSpeed = 7106.1
EnergyFireCost = 2962.9556161545224
MetalFireCost = 63.06868336209709
Projectile = "_sbflames8"
