summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.fire_elemental_ghost"}',Tags:["fire","affected_by_vacuum","affected_by_water","ghost","optional_ghost","no_delete_on_room_clear","vacuumable","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"elemental_ghost"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.fire_elemental_ghost"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:107,luigis_mansion:{model_data:{default:{tag:{CustomModelData:107}},hurt:{tag:{CustomModelData:108}}}}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","elemental_ghost_model","found_owner","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
scoreboard players operation @e[tag=this_entity,limit=1] ElementalNr = #temp ElementalNr
data modify entity @e[tag=this_entity,limit=1] data.loot set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.fire_elemental_ghost.loot
data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.fire_elemental_ghost.damage
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 2
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 7
execute if data storage luigis_mansion:data entity.training_room_score as @e[tag=this_entity,limit=1] store result score @s TrainingRoomScore run data get storage luigis_mansion:data entity.training_room_score
execute if data storage luigis_mansion:data entity.loot run data modify entity @e[tag=this_entity,limit=1] data.loot set from storage luigis_mansion:data entity.loot
execute if data storage luigis_mansion:data entity.damage run data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data entity.damage
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity