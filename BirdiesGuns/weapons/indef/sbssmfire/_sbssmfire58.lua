dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base58",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base58"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 35248.42600291893
MetalFireCost = 647.97201782967
Projectile = "_sbssmfire58"
