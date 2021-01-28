dofile(path .. "/weapons/sbroofgunner/sbroofgunner.lua")
Sprites={{Name = "sbroofgunner-base32",States={Normal={Frames={{texture= path .. "/weapons/sbroofgunner/base.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbroofgunner-base32"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 97.02554989870704
MetalFireCost = 3.2341849966235685
Projectile = "_sbroofgunner32"
