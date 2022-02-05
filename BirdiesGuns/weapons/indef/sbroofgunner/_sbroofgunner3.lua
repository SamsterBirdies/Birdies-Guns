dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base3",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base3"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 63.9052734375
MetalFireCost = 2.06298828125
Projectile = "_sbroofgunner3"
RoundsEachBurst = 10
RoundPeriod = 0.1
