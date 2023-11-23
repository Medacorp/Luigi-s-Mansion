execute if entity @s[tag=ghost] run function luigis_mansion:spawn_entities/setup/ghost
execute if entity @s[tag=ghost,tag=!vacuumable,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:spawn_entities/setup/ghost_with_health
execute if entity @s[tag=portrait_ghost,tag=!boo] run function luigis_mansion:spawn_entities/setup/portrait_ghost
execute if entity @s[tag=boo] run function luigis_mansion:spawn_entities/setup/boo

function luigis_mansion:spawn_entities/setup/spawn_time
function luigis_mansion:spawn_entities/setup/rotation
function luigis_mansion:spawn_entities/setup/loot
function luigis_mansion:spawn_entities/setup/path_number

#interaction
function luigis_mansion:spawn_entities/setup/damage
function luigis_mansion:spawn_entities/setup/talkable
function luigis_mansion:spawn_entities/setup/scan_message

#non-default setup
function luigis_mansion:spawn_entities/setup/tags

function luigis_mansion:spawn_entities/setup/debug_spawn