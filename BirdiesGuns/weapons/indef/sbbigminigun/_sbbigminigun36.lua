dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head36",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head36"
NodeEffects = {}
MinFireSpeed = 14530.0
MaxFireSpeed = 14530.1
EnergyFireCost = 18996.306315924212
MetalFireCost = 316.6051052654035
Projectile = "_sbbigminigun36"
