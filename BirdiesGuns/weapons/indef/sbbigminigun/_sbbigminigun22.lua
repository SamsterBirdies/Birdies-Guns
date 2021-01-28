dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head22",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head22"
NodeEffects = {}
MinFireSpeed = 12318.0
MaxFireSpeed = 12318.1
EnergyFireCost = 11543.549691962702
MetalFireCost = 192.392494866045
Projectile = "_sbbigminigun22"
