dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base14",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base14"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 87.68954886990906
MetalFireCost = 2.446605626934017
Projectile = "_sbroofgunner14"
RoundsEachBurst = 21
RoundPeriod = 0.047619047619047616
