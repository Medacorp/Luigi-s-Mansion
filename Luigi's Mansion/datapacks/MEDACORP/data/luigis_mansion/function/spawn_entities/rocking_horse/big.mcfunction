summon minecraft:item_display ~ ~1.45 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.rocking_horse"},Tags:["rocking_horse","battle","big","same_room_players_only","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"rocking_horse"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/rocking_horse","minecraft:custom_model_data":{strings:["big"]}}}}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
teleport @e[tag=this_entity,limit=1] ~ ~1.45 ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity