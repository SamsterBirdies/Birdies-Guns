dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head16",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head16"
NodeEffects = {}
MinFireSpeed = 11370.0
MaxFireSpeed = 11370.1
EnergyFireCost = 8812.61899148879
MetalFireCost = 146.8769831914798
Projectile = "_sbbigminigun16"
