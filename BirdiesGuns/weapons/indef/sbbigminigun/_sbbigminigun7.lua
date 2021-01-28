dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head7",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head7"
NodeEffects = {}
MinFireSpeed = 9948.0
MaxFireSpeed = 9948.1
EnergyFireCost = 5164.262526432867
MetalFireCost = 86.07104210721445
Projectile = "_sbbigminigun7"
