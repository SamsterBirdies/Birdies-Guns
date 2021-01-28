dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head40",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head40"
NodeEffects = {}
MinFireSpeed = 15162.0
MaxFireSpeed = 15162.1
EnergyFireCost = 21440.112187307754
MetalFireCost = 357.3352031217958
Projectile = "_sbbigminigun40"
