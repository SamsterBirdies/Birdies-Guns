dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head45",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head45"
NodeEffects = {}
MinFireSpeed = 15952.0
MaxFireSpeed = 15952.1
EnergyFireCost = 24715.90242263063
MetalFireCost = 411.9317070438437
Projectile = "_sbbigminigun45"
