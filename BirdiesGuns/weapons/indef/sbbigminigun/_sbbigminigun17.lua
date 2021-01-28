dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head17",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head17"
NodeEffects = {}
MinFireSpeed = 11528.0
MaxFireSpeed = 11528.1
EnergyFireCost = 9250.316163230802
MetalFireCost = 154.17193605384668
Projectile = "_sbbigminigun17"
