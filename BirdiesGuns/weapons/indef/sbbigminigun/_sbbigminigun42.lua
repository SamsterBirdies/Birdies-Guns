dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head42",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head42"
NodeEffects = {}
MinFireSpeed = 15478.0
MaxFireSpeed = 15478.1
EnergyFireCost = 22720.037595550602
MetalFireCost = 378.6672932591766
Projectile = "_sbbigminigun42"
