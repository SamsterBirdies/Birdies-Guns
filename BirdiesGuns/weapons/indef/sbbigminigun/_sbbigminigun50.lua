dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head50",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head50"
NodeEffects = {}
MinFireSpeed = 16742.0
MaxFireSpeed = 16742.1
EnergyFireCost = 28255.73724563523
MetalFireCost = 470.9289540939204
Projectile = "_sbbigminigun50"
