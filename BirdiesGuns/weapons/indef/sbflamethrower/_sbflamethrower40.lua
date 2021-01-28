dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel40",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel40"
NodeEffects = {}
MinFireSpeed = 12162.0
MaxFireSpeed = 12162.1
EnergyFireCost = 8977.339746548882
MetalFireCost = 144.69246798887764
Projectile = "_sbflames40"
