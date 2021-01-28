dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel11",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel11"
NodeEffects = {}
MinFireSpeed = 7580.0
MaxFireSpeed = 7580.1
EnergyFireCost = 3408.7375110108787
MetalFireCost = 69.1185805065762
Projectile = "_sbflames11"
