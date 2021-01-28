dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head51",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head51"
NodeEffects = {}
MinFireSpeed = 16900.0
MaxFireSpeed = 16900.1
EnergyFireCost = 28997.23314009828
MetalFireCost = 483.28721900163794
Projectile = "_sbbigminigun51"
