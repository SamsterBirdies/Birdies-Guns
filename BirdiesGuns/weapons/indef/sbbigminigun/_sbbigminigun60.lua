dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head60",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head60"
NodeEffects = {}
MinFireSpeed = 18322.0
MaxFireSpeed = 18322.1
EnergyFireCost = 36214.389289754574
MetalFireCost = 603.5731548292426
Projectile = "_sbbigminigun60"
