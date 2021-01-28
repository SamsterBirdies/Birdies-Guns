dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head4",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head4"
NodeEffects = {}
MinFireSpeed = 9474.0
MaxFireSpeed = 9474.1
EnergyFireCost = 4056.969451904297
MetalFireCost = 67.61615753173828
Projectile = "_sbbigminigun4"
