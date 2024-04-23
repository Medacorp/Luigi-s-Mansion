summon minecraft:item_frame ~1 ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.mario"}',Facing:5b,Item:{id:"minecraft:painting",count:1,components:{"minecraft:custom_model_data":1,"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:entity.mario"}',"minecraft:custom_data":{mansion:{namespace:"luigis_mansion",id:"empty"}}}},NoGravity:1b,Marker:1b,Silent:1b,Invisible:1b,Tags:["mario","calm","this_entity"]}
teleport @e[tag=this_entity,tag=!model_piece,limit=1] ~1 ~ ~ ~ ~
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s PassiveNr run data get storage luigis_mansion:data unique_id.passive
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.passive int 1 run scoreboard players add @s PassiveNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] PassiveNr = @e[tag=this_entity,tag=!model_piece,limit=1] PassiveNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
execute if data storage luigis_mansion:data entity.mansion.namespace run data modify entity @e[tag=this_entity,limit=1] Item.components."minecraft:custom_data".mansion set from storage luigis_mansion:data current_state.current_data.mansion_id
execute if data storage luigis_mansion:data entity.mansion.namespace run data modify entity @e[tag=this_entity,limit=1] Item.components."minecraft:custom_data".mansion.namespace set from storage luigis_mansion:data entity.mansion.namespace
execute if data storage luigis_mansion:data entity.mansion.id run data modify entity @e[tag=this_entity,limit=1] Item.components."minecraft:custom_data".mansion.id set from storage luigis_mansion:data entity.mansion.id
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity