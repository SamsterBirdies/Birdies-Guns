dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base36",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base36"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 149.34873798083783
MetalFireCost = 3.44110867711029
Projectile = "_sbroofgunner36"
RoundsEachBurst = 43
RoundPeriod = 0.023255813953488372
