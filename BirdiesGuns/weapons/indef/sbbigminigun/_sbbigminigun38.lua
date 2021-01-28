dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head38",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head38"
NodeEffects = {}
MinFireSpeed = 14846.0
MaxFireSpeed = 14846.1
EnergyFireCost = 20199.266158393504
MetalFireCost = 336.654435973225
Projectile = "_sbbigminigun38"
