dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base58",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base58"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 236.0713255271975
MetalFireCost = 4.839860089148351
Projectile = "_sbroofgunner58"
RoundsEachBurst = 65
RoundPeriod = 0.015384615384615385
