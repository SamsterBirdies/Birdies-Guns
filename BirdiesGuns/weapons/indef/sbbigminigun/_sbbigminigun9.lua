dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head9",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head9"
NodeEffects = {}
MinFireSpeed = 10264.0
MaxFireSpeed = 10264.1
EnergyFireCost = 5931.594036664762
MetalFireCost = 98.85990061107935
Projectile = "_sbbigminigun9"
