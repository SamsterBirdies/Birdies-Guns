--support explosions mod
--device destruction effects { device_savename, effect_path, use_included_path (optional, 1) }
if not sb_EXPLOSIONS_destruct then sb_EXPLOSIONS_destruct = {} end
--projectile impact effects { projectile_savename, effect_path, use_included_path (optional, 1)}
if not sb_EXPLOSIONS_impact then sb_EXPLOSIONS_impact = {} end

table.insert(sb_EXPLOSIONS_destruct, {"sbsuremp", "rocketemp_explode.lua", 1})