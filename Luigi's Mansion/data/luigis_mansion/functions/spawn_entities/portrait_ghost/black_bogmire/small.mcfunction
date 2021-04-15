summon minecraft:armor_stand ~ ~-0.5 ~ {CustomName:'{"translate":"luigis_mansion:entity.black_bogmire"}',Invisible:1b,NoGravity:1b,CustomNameVisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:136}}],HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:135}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:135}}],Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]},Tags:["black_bogmire","ghost","no_y_sync","ground_bound","appear","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~-0.5 ~ {CustomName:'{"translate":"luigis_mansion:entity.black_bogmire"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:135}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["black_bogmire_body","this_entity"],DisabledSlots:2039583}
teleport @e[tag=black_bogmire,tag=this_entity,limit=1] ~ ~-0.5 ~ ~ ~
teleport @e[tag=black_bogmire_body,tag=this_entity,limit=1] ~ ~-0.5 ~ ~ ~
execute as @e[tag=black_bogmire,tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=black_bogmire,tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=black_bogmire_body,tag=this_entity,limit=1] GhostNr = @e[tag=black_bogmire,tag=this_entity,limit=1] GhostNr
execute as @e[tag=black_bogmire,tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=black_bogmire,tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=black_bogmire,tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=black_bogmire,tag=this_entity,limit=1] store result score @s HomeRot run data get entity @s Rotation[0]
execute if score #mansion_type Selected matches 0 run scoreboard players set @e[tag=this_entity,limit=1] Move 2
execute if score #mansion_type Selected matches 1 run scoreboard players set @e[tag=this_entity,limit=1] Move 4
scoreboard players set @e[tag=black_bogmire,tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=black_bogmire,tag=this_entity,limit=1] Room 61
tag @e[tag=black_bogmire,tag=this_entity,limit=1] remove this_entity
tag @e[tag=black_bogmire_body,tag=this_entity,limit=1] remove this_entity