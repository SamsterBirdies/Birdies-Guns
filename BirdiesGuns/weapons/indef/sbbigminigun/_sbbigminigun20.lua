dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head20",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head20"
NodeEffects = {}
MinFireSpeed = 12002.0
MaxFireSpeed = 12002.1
EnergyFireCost = 10604.870896634136
MetalFireCost = 176.7478482772356
Projectile = "_sbbigminigun20"
