dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base21",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base21"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 105.0788706551739
MetalFireCost = 2.7270785589544184
Projectile = "_sbroofgunner21"
RoundsEachBurst = 28
RoundPeriod = 0.03571428571428571
