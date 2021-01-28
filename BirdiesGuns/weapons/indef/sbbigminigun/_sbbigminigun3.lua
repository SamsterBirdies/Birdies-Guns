dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head3",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head3"
NodeEffects = {}
MinFireSpeed = 9316.0
MaxFireSpeed = 9316.1
EnergyFireCost = 3699.169921875
MetalFireCost = 61.65283203125
Projectile = "_sbbigminigun3"
