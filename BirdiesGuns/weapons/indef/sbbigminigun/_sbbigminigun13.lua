dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head13",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head13"
NodeEffects = {}
MinFireSpeed = 10896.0
MaxFireSpeed = 10896.1
EnergyFireCost = 7539.5174980604
MetalFireCost = 125.65862496767332
Projectile = "_sbbigminigun13"
