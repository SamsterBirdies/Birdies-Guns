dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head12",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head12"
NodeEffects = {}
MinFireSpeed = 10738.0
MaxFireSpeed = 10738.1
EnergyFireCost = 7128.140305782547
MetalFireCost = 118.80233842970911
Projectile = "_sbbigminigun12"
