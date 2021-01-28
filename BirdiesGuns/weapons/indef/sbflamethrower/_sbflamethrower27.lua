dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel27",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel27"
NodeEffects = {}
MinFireSpeed = 10108.0
MaxFireSpeed = 10108.1
EnergyFireCost = 6170.346096864913
MetalFireCost = 106.5975541717381
Projectile = "_sbflames27"
