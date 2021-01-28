dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head48",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head48"
NodeEffects = {}
MinFireSpeed = 16426.0
MaxFireSpeed = 16426.1
EnergyFireCost = 26806.79284215903
MetalFireCost = 446.7798807026504
Projectile = "_sbbigminigun48"
