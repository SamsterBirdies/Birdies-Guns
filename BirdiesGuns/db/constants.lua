--support explosions mod
--device destruction effects { device_savename, effect_path, use_included_path (optional, 1) }
if not sb_EXPLOSIONS_destruct then sb_EXPLOSIONS_destruct = {} end
--projectile impact effects { projectile_savename, effect_path, use_included_path (optional, 1)}
if not sb_EXPLOSIONS_impact then sb_EXPLOSIONS_impact = {} end

table.insert(sb_EXPLOSIONS_destruct, {"sbsuremp", "rocketemp_explode.lua", 1})
table.insert(sb_EXPLOSIONS_destruct, {"sbperiscope2", "generic.lua", 1})
table.insert(sb_EXPLOSIONS_destruct, {"sbbigminigun", "generic_large.lua", 1})
table.insert(sb_EXPLOSIONS_destruct, {"sboilgunemp", "rocketemp_explode.lua", 1})
table.insert(sb_EXPLOSIONS_destruct, {"sbsnipercopter", "generic.lua", 1})
table.insert(sb_EXPLOSIONS_destruct, {"sbseepcopter", "generic.lua", 1})
table.insert(sb_EXPLOSIONS_destruct, {"sbflamecopter", "generic.lua", 1})
table.insert(sb_EXPLOSIONS_destruct, {"sbspookcopter", "generic.lua", 1})
table.insert(sb_EXPLOSIONS_destruct, {"sbshockcopter", "generic.lua", 1})
table.insert(sb_EXPLOSIONS_destruct, {"sbshotcopter", "generic.lua", 1})
table.insert(sb_EXPLOSIONS_destruct, {"sbwarthogcopter", "generic.lua", 1})
table.insert(sb_EXPLOSIONS_destruct, {"sbmooncopter", "generic.lua", 1})
table.insert(sb_EXPLOSIONS_destruct, {"sboildrumempdevice", "rocketemp_explode.lua", 1})
table.insert(sb_EXPLOSIONS_destruct, {"sboildrumdevice", "rocket_structure_hit.lua", 1})