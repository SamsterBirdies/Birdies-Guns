dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base45",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base45"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 181.29603154982863
MetalFireCost = 3.9563876056423997
Projectile = "_sbroofgunner45"
RoundsEachBurst = 52
RoundPeriod = 0.019230769230769232
