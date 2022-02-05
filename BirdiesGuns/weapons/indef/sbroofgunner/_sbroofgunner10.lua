dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base10",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base10"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 78.56802360326434
MetalFireCost = 2.299484251665554
Projectile = "_sbroofgunner10"
RoundsEachBurst = 17
RoundPeriod = 0.058823529411764705
