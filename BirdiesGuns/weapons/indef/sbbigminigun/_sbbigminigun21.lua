dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head21",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head21"
NodeEffects = {}
MinFireSpeed = 12160.0
MaxFireSpeed = 12160.1
EnergyFireCost = 11070.572004394046
MetalFireCost = 184.50953340656739
Projectile = "_sbbigminigun21"
