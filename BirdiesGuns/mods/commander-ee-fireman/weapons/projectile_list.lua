if active then
	local sbfogflame = FindProjectile("flamingsbfog")
	if sbfogflame then 
		sbfogflame.IncendiaryRadius = 0
		sbfogflame.IncendiaryRadiusHeated = 0
		sbfogflame.ProjectileDamage = sbfogflame.ProjectileDamage / 2
	end
	
	local sbimploderflame = FindProjectile("sbimploder")
	sbimploderflame.IncendiaryRadius = 300
	
	local sbrmfirebuff = FindProjectile("sbrmfire")
	sbrmfirebuff.ProjectileDamage = 150
	sbrmfirebuff.ProjectileSplashDamage = 70
	
	local sbsurfirebuff = FindProjectile("sbsurfire")
	sbsurfirebuff.IncendiaryRadius = 260
	sbsurfirebuff.IncendiaryRadiusHeated = 270
	
	local sbfirebulletbuff = FindProjectile("sbfirebullet")
	sbfirebulletbuff.IncendiaryRadius = 60
	
	local sbflamesbuff = FindProjectile("sbflames")
	sbflamesbuff.ProjectileMass = 50
	sbflamesbuff.Projectile.Root.Sprite = path .."/effects/media/hotflame"
	
	local sbmolotovbuff = FindProjectile("sbmolotov")
	sbmolotovbuff.ProjectileDamage = 60
	sbmolotovbuff.IncendiaryRadius = 70
	sbmolotovbuff.IncendiaryRadiusHeated = 80
	
	local sbsawwoodbuff = FindProjectile("sbsawwood")
	sbsawwoodbuff.IncendiaryRadius = 140
	sbsawwoodbuff.IncendiaryRadiusHeated = 165
	
	local sbsawarmourbuff = FindProjectile("sbsawarmour")
	sbsawarmourbuff.IncendiaryRadius = 140
	sbsawarmourbuff.IncendiaryRadiusHeated = 165
end

local sbfirebulletnonactivebuff = FindProjectile("sbfirebullet")
sbfirebulletnonactivebuff.IncendiaryRadius = 30

local cannon = FindProjectile("sbdowncannon")
if cannon then
	cannon.ProjectileIncendiary = true
	cannon.IncendiaryRadius = 40
	cannon.IncendiaryRadiusHeated = 50
	cannon.IncendiaryOffset = -10
	cannon.AlwaysIncendiary = true
end