dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel36",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel36"
NodeEffects = {}
MinFireSpeed = 11530.0
MaxFireSpeed = 11530.1
EnergyFireCost = 8052.656443863217
MetalFireCost = 132.14319459528647
Projectile = "_sbflames36"
