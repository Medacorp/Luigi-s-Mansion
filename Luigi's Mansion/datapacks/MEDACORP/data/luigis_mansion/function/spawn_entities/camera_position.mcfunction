summon minecraft:marker ~ ~ ~ {Tags:["camera_position","same_room_players_only","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
function luigis_mansion:spawn_entities/setup/room
function luigis_mansion:spawn_entities/setup/tags
function luigis_mansion:spawn_entities/setup/debug_spawn
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity