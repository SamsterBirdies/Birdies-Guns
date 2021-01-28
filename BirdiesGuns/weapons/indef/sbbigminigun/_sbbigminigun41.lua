dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head41",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head41"
NodeEffects = {}
MinFireSpeed = 15320.0
MaxFireSpeed = 15320.1
EnergyFireCost = 22075.113940234438
MetalFireCost = 367.91856567057386
Projectile = "_sbbigminigun41"
