dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base50",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base50"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 201.06808191255703
MetalFireCost = 4.275291643750924
Projectile = "_sbroofgunner50"
RoundsEachBurst = 57
RoundPeriod = 0.017543859649122806
