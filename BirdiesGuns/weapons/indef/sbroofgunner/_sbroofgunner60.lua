dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base60",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base60"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 245.5218140508812
MetalFireCost = 4.992287323401314
Projectile = "_sbroofgunner60"
RoundsEachBurst = 67
RoundPeriod = 0.014925373134328358
