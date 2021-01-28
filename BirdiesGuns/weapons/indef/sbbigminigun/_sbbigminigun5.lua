dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head5",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head5"
NodeEffects = {}
MinFireSpeed = 9632.0
MaxFireSpeed = 9632.1
EnergyFireCost = 4420.3595995903015
MetalFireCost = 73.67265999317169
Projectile = "_sbbigminigun5"
