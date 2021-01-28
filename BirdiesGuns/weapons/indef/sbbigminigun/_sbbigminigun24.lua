dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head24",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head24"
NodeEffects = {}
MinFireSpeed = 12634.0
MaxFireSpeed = 12634.1
EnergyFireCost = 12511.79136927305
MetalFireCost = 208.5298561545508
Projectile = "_sbbigminigun24"
