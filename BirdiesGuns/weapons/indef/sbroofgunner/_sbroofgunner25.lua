dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base25",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base25"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 87.0467246200485
MetalFireCost = 2.90155748733495
Projectile = "_sbroofgunner25"
