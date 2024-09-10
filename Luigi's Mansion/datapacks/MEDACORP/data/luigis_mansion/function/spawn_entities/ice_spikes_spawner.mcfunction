summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.ice_spike"}',Tags:["ice_spikes_spawner","same_room_players_only","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"ice_spikes_spawner"}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
execute store result score @e[tag=this_entity,limit=1] IceSpikesNr run data get storage luigis_mansion:data unique_id.ice_spikes
execute store result storage luigis_mansion:data unique_id.ice_spikes int 1 run scoreboard players add @e[tag=this_entity,limit=1] IceSpikesNr 1
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity