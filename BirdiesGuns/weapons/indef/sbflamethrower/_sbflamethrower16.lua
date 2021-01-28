dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel16",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel16"
NodeEffects = {}
MinFireSpeed = 8370.0
MaxFireSpeed = 8370.1
EnergyFireCost = 4199.369348130894
MetalFireCost = 79.84858401034782
Projectile = "_sbflames16"
