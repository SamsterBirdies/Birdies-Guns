dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head15",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head15"
NodeEffects = {}
MinFireSpeed = 11212.0
MaxFireSpeed = 11212.1
EnergyFireCost = 8381.655622388962
MetalFireCost = 139.69426037314935
Projectile = "_sbbigminigun15"
