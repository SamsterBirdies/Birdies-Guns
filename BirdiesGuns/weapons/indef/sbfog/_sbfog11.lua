dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head11",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head11"
NodeEffects = {}
MinFireSpeed = 3380.0
MaxFireSpeed = 3380.1
EnergyFireCost = 1354.0567015407648
MetalFireCost = 45.76444357559793
Projectile = "_sbfog11"
