dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head11",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head11"
NodeEffects = {}
MinFireSpeed = 10580.0
MaxFireSpeed = 10580.1
EnergyFireCost = 6723.091993385893
MetalFireCost = 112.0515332230982
Projectile = "_sbbigminigun11"
