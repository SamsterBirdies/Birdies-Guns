dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel28",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel28"
NodeEffects = {}
MinFireSpeed = 10266.0
MaxFireSpeed = 10266.1
EnergyFireCost = 6366.757754628427
MetalFireCost = 109.2631409556715
Projectile = "_sbflames28"
