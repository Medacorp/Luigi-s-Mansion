summon minecraft:armor_stand ~ ~-0.5 ~ {CustomName:'{"translate":"luigis_mansion:entity.black_bogmire"}',Invisible:1b,NoGravity:1b,Marker:0b,CustomNameVisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:101}}],HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:101}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:101}}],Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]},Tags:["black_bogmire","ghost","ground_bound","new_black_bogmire","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~-0.5 ~ {CustomName:'{"translate":"luigis_mansion:entity.black_bogmire"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:102}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","body","this_entity"],DisabledSlots:2039583}
teleport @e[tag=black_bogmire,tag=this_entity,limit=1] ~ ~-0.5 ~ ~ ~
teleport @e[tag=model_piece,tag=this_entity,limit=1] ~ ~-0.5 ~ ~ ~
execute as @e[tag=black_bogmire,tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=black_bogmire,tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=model_piece,tag=this_entity,limit=1] GhostNr = @e[tag=black_bogmire,tag=this_entity,limit=1] GhostNr
execute as @e[tag=black_bogmire,tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=black_bogmire,tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=black_bogmire,tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=black_bogmire,tag=this_entity,limit=1] store result score @s HomeRot run data get entity @s Rotation[0]
execute as @e[tag=black_bogmire,tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.black_bogmire.small_speed
scoreboard players set @e[tag=black_bogmire,tag=this_entity,limit=1] Sound 0
tag @e[tag=this_entity] remove this_entity