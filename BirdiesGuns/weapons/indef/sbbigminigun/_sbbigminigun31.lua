dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head31",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head31"
NodeEffects = {}
MinFireSpeed = 13740.0
MaxFireSpeed = 13740.1
EnergyFireCost = 16147.154178482811
MetalFireCost = 269.1192363080468
Projectile = "_sbbigminigun31"
