dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head28",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head28"
NodeEffects = {}
MinFireSpeed = 13266.0
MaxFireSpeed = 13266.1
EnergyFireCost = 14540.716922946558
MetalFireCost = 242.34528204910924
Projectile = "_sbbigminigun28"
