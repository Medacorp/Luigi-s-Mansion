execute if score #mirrored Selected matches 0 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0.0f,90.0f],CustomName:'{"translate":"luigis_mansion:entity.ghost_guy"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:46}}],HandItems:[{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:45}},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:44}}],Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Tags:["ghost_guy","normal_ghost","ghost","dancing","hidden","new_ghost","no_hidden_move","no_height_change","this_entity"],DisabledSlots:2039583}
execute if score #mirrored Selected matches 1 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0.0f,90.0f],CustomName:'{"translate":"luigis_mansion:entity.ghost_guy"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:46}}],HandItems:[{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:44}},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:45}}],Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Tags:["ghost_guy","normal_ghost","ghost","dancing","hidden","new_ghost","no_hidden_move","no_height_change","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.dancing_ghost_guy.health
teleport @e[tag=this_entity,limit=1] ~ ~ ~ facing entity @p[gamemode=!spectator]
scoreboard players set @e[tag=this_entity,limit=1] PullStrength 20
scoreboard players set @e[tag=this_entity,limit=1] Move 2
scoreboard players set @e[tag=this_entity,limit=1] WaitTime 0
scoreboard players set @e[tag=this_entity,limit=1] Distance 0
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=this_entity,limit=1] TopVacuumDamage 0
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
scoreboard players operation @e[tag=this_entity,limit=1] GhostGuyCouple > @e[tag=ghost_guy,tag=!this_entity] GhostGuyCouple
scoreboard players add @e[tag=this_entity,limit=1] GhostGuyCouple 1
scoreboard players operation @e[tag=this_entity,limit=1] GhostGuyCouple = @e[tag=ghost_guy,distance=..2,tag=!this_entity,limit=1] GhostGuyCouple
tag @e[tag=this_entity,limit=1] remove this_entity