dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel40",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel40"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 9684.785258397103
MetalFireCost = 71.46704062435919
Projectile = "_sbimploder40"
