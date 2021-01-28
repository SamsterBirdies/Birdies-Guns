dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head18",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head18"
NodeEffects = {}
MinFireSpeed = 11686.0
MaxFireSpeed = 11686.1
EnergyFireCost = 9694.852353281283
MetalFireCost = 161.58087255468803
Projectile = "_sbbigminigun18"
