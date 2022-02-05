dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base48",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base48"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 192.97487893818547
MetalFireCost = 4.14475611190622
Projectile = "_sbroofgunner48"
RoundsEachBurst = 55
RoundPeriod = 0.01818181818181818
