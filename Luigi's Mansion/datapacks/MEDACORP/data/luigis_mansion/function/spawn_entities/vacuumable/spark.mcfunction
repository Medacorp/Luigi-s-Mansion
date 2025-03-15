summon minecraft:marker ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.spark"},Tags:["optional_ghost","affected_by_vacuum","affected_by_fire","affected_by_water","pulled_by_vacuum","hurt_by_fire","hurt_by_water","ghost","vacuumable","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"spark"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.spark"},Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/spark","minecraft:custom_model_data":{flags:[B;1b]}}}},Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","spark_model","found_owner","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.spark.speed
data modify entity @e[tag=this_entity,limit=1] data.loot set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.spark.loot
data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.spark.damage
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 4
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
scoreboard players set @e[tag=this_entity,limit=1] ActionTime 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity