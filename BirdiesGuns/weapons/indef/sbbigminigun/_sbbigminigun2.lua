dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head2",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head2"
NodeEffects = {}
MinFireSpeed = 9158.0
MaxFireSpeed = 9158.1
EnergyFireCost = 3346.875
MetalFireCost = 55.78125
Projectile = "_sbbigminigun2"
