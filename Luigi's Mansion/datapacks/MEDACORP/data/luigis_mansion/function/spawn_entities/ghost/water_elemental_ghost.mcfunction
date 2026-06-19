summon minecraft:marker ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.water_elemental_ghost"},Tags:["water","affected_by_vacuum","affected_by_ice","pulled_by_vacuum","hurt_by_ice","ghost","optional_ghost","no_delete_on_room_clear","vacuumable","same_room_players_only","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"elemental_ghost"}}}
summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.water_elemental_ghost"},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/water_elemental_ghost","minecraft:custom_model_data":{strings:["default"]},"minecraft:custom_data":{model_data:{default:{components:{"minecraft:custom_model_data":{strings:["default"]}}},hurt:{components:{"minecraft:custom_model_data":{strings:["hurt"]}}}}}}},item_display:"head",Tags:["model_piece","elemental_ghost_model","found_owner","this_entity"],brightness:{block:15,sky:15}}
teleport @e[tag=this_entity,tag=!model_piece,limit=1] ~ ~ ~ ~ 0
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
scoreboard players operation @e[tag=this_entity,limit=1] ElementalNr = #entity ElementalNr
data modify entity @e[tag=this_entity,limit=1] data.loot_storage set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.water_elemental_ghost.loot
data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.water_elemental_ghost.damage
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.water_elemental_ghost.speed
scoreboard players set @e[tag=this_entity,limit=1] SpawnTime 0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 2
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity