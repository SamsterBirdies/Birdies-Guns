dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel43",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel43"
NodeEffects = {}
MinFireSpeed = 17476.0
MaxFireSpeed = 17476.1
EnergyFireCost = 9673.834853106298
MetalFireCost = 224.16140926607628
Projectile = "_sb50cal43"
