summon minecraft:item_display ~ ~-0.75 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.ice_spike"},data:{entity:{namespace:"luigis_mansion",id:"ice_spikes"}},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/ice_spikes"}},item_display:"head",Tags:["ice_spikes","same_room_players_only","this_entity"]}
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
$scoreboard players set @e[tag=this_entity,limit=1] IceSpikesNr $(id)
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity