dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base9",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base9"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 76.37466939398335
MetalFireCost = 2.2641075708706992
Projectile = "_sbroofgunner9"
RoundsEachBurst = 16
RoundPeriod = 0.0625
