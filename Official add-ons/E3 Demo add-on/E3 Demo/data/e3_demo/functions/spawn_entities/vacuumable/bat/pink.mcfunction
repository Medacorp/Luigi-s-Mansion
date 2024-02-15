summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"e3_demo:entity.bat"}',Tags:["affected_by_vacuum","affected_by_fire","affected_by_water","affected_by_ice","ghost","optional_ghost","vacuumable","bat","visible","this_entity"],data:{entity:{namespace:"e3_demo",id:"bat"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"e3_demo:entity.bat"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:14,display:{color:16711796}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","bat_model","found_owner","head","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"e3_demo:entity.bat"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:14,luigis_mansion:{mirror:{tag:{Damage:3}},model_data:{default:{tag:{CustomModelData:14}},idle:{tag:{CustomModelData:15}}}},display:{color:16711796}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","bat_model","found_owner","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"e3_demo:entity.bat"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:14,luigis_mansion:{mirror:{tag:{Damage:2}},model_data:{default:{tag:{CustomModelData:14}},idle:{tag:{CustomModelData:15}}}},display:{color:16711796}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","bat_model","found_owner","left_arm","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.bat.speed
data modify entity @e[tag=this_entity,limit=1] data.loot set from storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.bat.loot
data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.bat.damage
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 7
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 6
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity