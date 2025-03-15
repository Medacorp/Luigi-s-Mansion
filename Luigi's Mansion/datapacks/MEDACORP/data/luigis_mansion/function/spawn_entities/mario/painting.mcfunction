summon minecraft:item_frame ~1 ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.mario"},Facing:5b,Invulnerable:1b,data:{entity:{namespace:"luigis_mansion",id:"mario"}},Item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/marios_painting"}},NoGravity:1b,Marker:1b,Silent:1b,Invisible:1b,Tags:["mario","calm","same_room_players_only","this_entity"]}
teleport @e[tag=this_entity,tag=!model_piece,limit=1] ~1 ~ ~ ~ ~
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s PassiveNr run data get storage luigis_mansion:data unique_id.passive
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.passive int 1 run scoreboard players add @s PassiveNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] PassiveNr = @e[tag=this_entity,tag=!model_piece,limit=1] PassiveNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
function luigis_mansion:spawn_entities/setup/mansion_behavior
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity