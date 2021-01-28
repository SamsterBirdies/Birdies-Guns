dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head8",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head8"
NodeEffects = {}
MinFireSpeed = 10106.0
MaxFireSpeed = 10106.1
EnergyFireCost = 5544.954128408381
MetalFireCost = 92.41590214013968
Projectile = "_sbbigminigun8"
