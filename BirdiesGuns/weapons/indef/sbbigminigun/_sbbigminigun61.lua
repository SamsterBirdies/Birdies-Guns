dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head61",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head61"
NodeEffects = {}
MinFireSpeed = 18480.0
MaxFireSpeed = 18480.1
EnergyFireCost = 37080.23912240699
MetalFireCost = 618.0039853734496
Projectile = "_sbbigminigun61"
