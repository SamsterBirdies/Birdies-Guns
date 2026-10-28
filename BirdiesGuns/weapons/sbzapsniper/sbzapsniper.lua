-- Lightning Sniper starter weapon.
-- This inherits the regular sniper's model and animation, so it needs no
-- custom art while you prototype it. Replace these values as desired.

dofile("weapons/snipertower.lua")

Sprites = {}

Projectile = "sbzapsniper"

-- Basic firing and economy tuning.
ReloadTime = 0
EnergyFireCost = 100
MetalFireCost = 0
BeamDuration = 4
HoldToFire = true
CanUpdateAimWhileFiring = true

CanOverheat = true
HeatPeriod = 3.96
CoolPeriod = 10
CoolPeriodOverheated = 12
KickbackMean = 0
KickbackStdDev = 0