dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head33",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head33"
NodeEffects = {}
MinFireSpeed = 14056.0
MaxFireSpeed = 14056.1
EnergyFireCost = 17260.382422873503
MetalFireCost = 287.67304038122506
Projectile = "_sbbigminigun33"
