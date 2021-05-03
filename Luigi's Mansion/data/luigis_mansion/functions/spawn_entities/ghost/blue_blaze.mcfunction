summon minecraft:armor_stand ~ ~ ~ {Rotation:[0.0f,90.0f],CustomName:'{"translate":"luigis_mansion:entity.blue_blaze"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:6}}],HandItems:[{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:6}},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:6}}],Pose:{RightArm:[-90.0f,0.0f,0.0f],LeftArm:[-90.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Tags:["blue_blaze","normal_ghost","watery_heart","ghost","hidden","new_ghost","no_height_change","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
execute store result score @e[tag=this_entity,limit=1] Health run data get storage luigis_mansion:data current_state.current_data.ghost_health.blue_blaze
teleport @e[tag=this_entity,limit=1] ~ ~ ~ facing entity @p[gamemode=!spectator]
scoreboard players set @e[tag=this_entity,limit=1] PullStrength 15
scoreboard players set @e[tag=this_entity,limit=1] Move 1
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=this_entity,limit=1] VulnerableTime 0
tag @e[tag=this_entity,limit=1] remove this_entity