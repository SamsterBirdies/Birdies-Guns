dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base23",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base23"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 110.40386438430413
MetalFireCost = 2.8129655545855514
Projectile = "_sbroofgunner23"
RoundsEachBurst = 30
RoundPeriod = 0.03333333333333333
