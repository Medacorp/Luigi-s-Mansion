summon minecraft:marker ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.crow"},Tags:["crow","same_room_players_only","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"crow"}}}
summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.crow"},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/crow","minecraft:custom_model_data":{floats:[0f],strings:["angry"]}}},item_display:"head",Tags:["model_piece","crow_model","found_owner","head","this_entity"]}
summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.crow"},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/crow","minecraft:custom_model_data":{floats:[1f]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{floats:[2f]}}}}}},item_display:"head",Tags:["model_piece","crow_model","found_owner","right_arm","this_entity"]}
summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.crow"},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/crow","minecraft:custom_model_data":{floats:[2f]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{floats:[1f]}}}}}},item_display:"head",Tags:["model_piece","crow_model","found_owner","left_arm","this_entity"]}
summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.crow"},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/crow","minecraft:custom_model_data":{floats:[3f]}}},item_display:"head",Tags:["model_piece","crow_model","found_owner","body","this_entity"]}
teleport @e[tag=this_entity,tag=!model_piece,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s PassiveNr run data get storage luigis_mansion:data unique_id.passive
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.passive int 1 run scoreboard players add @s PassiveNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] PassiveNr = @e[tag=this_entity,tag=!model_piece,limit=1] PassiveNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 6
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity