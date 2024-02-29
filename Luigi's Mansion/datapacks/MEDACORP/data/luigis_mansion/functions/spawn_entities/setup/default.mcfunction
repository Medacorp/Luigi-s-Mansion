execute if entity @e[tag=this_entity,limit=1,tag=ghost] run function luigis_mansion:spawn_entities/setup/ghost
execute if entity @e[tag=this_entity,limit=1,tag=ghost,tag=!vacuumable,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:spawn_entities/setup/ghost_with_health
execute if entity @e[tag=this_entity,limit=1,tag=portrait_ghost,tag=!boo] run function luigis_mansion:spawn_entities/setup/portrait_ghost
execute if entity @e[tag=this_entity,limit=1,tag=boo] run function luigis_mansion:spawn_entities/setup/boo

function luigis_mansion:spawn_entities/setup/room
function luigis_mansion:spawn_entities/setup/paths
function luigis_mansion:spawn_entities/setup/spawn_time
function luigis_mansion:spawn_entities/setup/rotation
function luigis_mansion:spawn_entities/setup/loot
function luigis_mansion:spawn_entities/setup/speed

#interaction
function luigis_mansion:spawn_entities/setup/owner
function luigis_mansion:spawn_entities/setup/damage
function luigis_mansion:spawn_entities/setup/talkable
function luigis_mansion:spawn_entities/setup/scan_message

#non-default setup
function luigis_mansion:spawn_entities/setup/tags

function luigis_mansion:spawn_entities/setup/debug_spawn