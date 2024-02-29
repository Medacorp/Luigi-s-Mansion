summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.unknown"}',Tags:["hidden","new_ghost","ghost","only_forced_spawn","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"empty_ghost_marker"}}}
function luigis_mansion:spawn_entities/setup/tags
function luigis_mansion:spawn_entities/setup/debug_spawn
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity