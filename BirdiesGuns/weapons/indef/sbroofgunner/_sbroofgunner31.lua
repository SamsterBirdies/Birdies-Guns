dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base31",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base31"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 133.43455487080482
MetalFireCost = 3.184428304367821
Projectile = "_sbroofgunner31"
RoundsEachBurst = 38
RoundPeriod = 0.02631578947368421
