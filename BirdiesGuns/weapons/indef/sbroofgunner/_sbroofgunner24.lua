dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base24",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base24"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 113.12892476530888
MetalFireCost = 2.856918141375951
Projectile = "_sbroofgunner24"
RoundsEachBurst = 31
RoundPeriod = 0.03225806451612903
