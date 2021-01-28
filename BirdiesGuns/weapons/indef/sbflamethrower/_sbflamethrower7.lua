dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel7",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel7"
NodeEffects = {}
MinFireSpeed = 6948.0
MaxFireSpeed = 6948.1
EnergyFireCost = 2818.9101451367605
MetalFireCost = 61.11378054114175
Projectile = "_sbflames7"
