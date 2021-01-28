dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel30",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel30"
NodeEffects = {}
MinFireSpeed = 10582.0
MaxFireSpeed = 10582.1
EnergyFireCost = 6768.835818678004
MetalFireCost = 114.71991468205862
Projectile = "_sbflames30"
