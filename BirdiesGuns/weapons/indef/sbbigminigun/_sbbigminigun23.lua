dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head23",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head23"
NodeEffects = {}
MinFireSpeed = 12476.0
MaxFireSpeed = 12476.1
EnergyFireCost = 12023.917655899619
MetalFireCost = 200.39862759832695
Projectile = "_sbbigminigun23"
