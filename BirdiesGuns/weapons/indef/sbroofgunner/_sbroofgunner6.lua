dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base6",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base6"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 69.99500166997313
MetalFireCost = 2.1612097043544054
Projectile = "_sbroofgunner6"
RoundsEachBurst = 13
RoundPeriod = 0.07692307692307693
