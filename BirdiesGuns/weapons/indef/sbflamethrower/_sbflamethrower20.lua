dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel20",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel20"
NodeEffects = {}
MinFireSpeed = 9002.0
MaxFireSpeed = 9002.1
EnergyFireCost = 4877.518717645349
MetalFireCost = 89.05203973947258
Projectile = "_sbflames20"
