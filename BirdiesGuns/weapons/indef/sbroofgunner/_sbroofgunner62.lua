dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base62",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base62"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 255.26993758910476
MetalFireCost = 5.14951512240492
Projectile = "_sbroofgunner62"
RoundsEachBurst = 69
RoundPeriod = 0.014492753623188406
