dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head27",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head27"
NodeEffects = {}
MinFireSpeed = 13108.0
MaxFireSpeed = 13108.1
EnergyFireCost = 14021.628970285841
MetalFireCost = 233.69381617143063
Projectile = "_sbbigminigun27"
