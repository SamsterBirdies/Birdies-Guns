dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head30",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head30"
NodeEffects = {}
MinFireSpeed = 13582.0
MaxFireSpeed = 13582.1
EnergyFireCost = 15603.351806506153
MetalFireCost = 260.0558634417692
Projectile = "_sbbigminigun30"
