dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head26",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head26"
NodeEffects = {}
MinFireSpeed = 12950.0
MaxFireSpeed = 12950.1
EnergyFireCost = 13510.526986127597
MetalFireCost = 225.17544976879324
Projectile = "_sbbigminigun26"
