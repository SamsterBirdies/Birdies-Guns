dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel27",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel27"
NodeEffects = {}
MinFireSpeed = 14628.0
MaxFireSpeed = 14628.1
EnergyFireCost = 5439.521223034807
MetalFireCost = 132.73394083567692
Projectile = "_sb50cal27"
RoundsEachBurst = 19
