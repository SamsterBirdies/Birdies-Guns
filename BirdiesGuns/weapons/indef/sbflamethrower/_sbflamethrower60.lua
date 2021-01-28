dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel60",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel60"
NodeEffects = {}
MinFireSpeed = 15322.0
MaxFireSpeed = 15322.1
EnergyFireCost = 14567.606758285512
MetalFireCost = 220.5603774338748
Projectile = "_sbflames60"
