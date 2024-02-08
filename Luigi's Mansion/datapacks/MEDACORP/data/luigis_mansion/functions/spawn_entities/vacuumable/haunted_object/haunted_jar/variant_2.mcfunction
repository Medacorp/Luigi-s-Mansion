summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.haunted_teddy_bear"}',Tags:["affected_by_vacuum","affected_by_dust","affected_by_fire","affected_by_water","affected_by_ice","ghost","vacuumable","haunted_teddy_bear","optional_ghost","no_remove_on_non_ticking","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.haunted_teddy_bear"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:121}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","haunted_object_model","found_owner","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.haunted_jar.speed
data modify entity @e[tag=this_entity,limit=1] data.loot set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.haunted_jar.loot
data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.haunted_jar.damage
execute as @e[tag=this_entity,limit=1] store result score @s HomeRotationX run data get entity @s Rotation[0]
execute as @e[tag=this_entity,limit=1] store result score @s HomeRotationY run data get entity @s Rotation[1]
scoreboard players set @e[tag=this_entity,limit=1] WaitTime 0
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 7
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity