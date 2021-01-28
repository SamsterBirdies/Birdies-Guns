dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head32",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head32"
NodeEffects = {}
MinFireSpeed = 13898.0
MaxFireSpeed = 13898.1
EnergyFireCost = 16699.453462521604
MetalFireCost = 278.3242243753601
Projectile = "_sbbigminigun32"
