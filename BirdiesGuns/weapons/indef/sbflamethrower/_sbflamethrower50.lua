dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel50",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel50"
NodeEffects = {}
MinFireSpeed = 13742.0
MaxFireSpeed = 13742.1
EnergyFireCost = 11556.224903753871
MetalFireCost = 179.6916236938025
Projectile = "_sbflames50"
