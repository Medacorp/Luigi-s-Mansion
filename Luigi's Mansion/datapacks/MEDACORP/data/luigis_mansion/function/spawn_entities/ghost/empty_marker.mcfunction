summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.unknown"}',Tags:["hidden","new_ghost","ghost","empty_marker","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"empty_ghost_marker"}}}
function luigis_mansion:spawn_entities/setup/room
function luigis_mansion:spawn_entities/setup/spawn_timer
function luigis_mansion:spawn_entities/setup/tags
function luigis_mansion:spawn_entities/setup/debug_spawn
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity