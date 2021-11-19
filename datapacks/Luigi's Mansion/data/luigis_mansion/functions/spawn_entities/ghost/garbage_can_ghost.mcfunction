execute if score #mirrored Selected matches 0 run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.garbage_can_ghost"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_button",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:7,display:{color:52224}}}],HandItems:[{id:"minecraft:oak_button",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:10,display:{color:52224}}},{id:"minecraft:oak_button",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:9,display:{color:52224}}}],Pose:{RightArm:[-40.0f,20.0f,0.0f],LeftArm:[-40.0f,-20.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Tags:["garbage_can_ghost","normal_ghost","stunable","ghost","hidden","new_ghost","this_entity"],DisabledSlots:2039583}
execute if score #mirrored Selected matches 1 run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.garbage_can_ghost"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_button",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:7,display:{color:52224}}}],HandItems:[{id:"minecraft:oak_button",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:9,display:{color:52224}}},{id:"minecraft:oak_button",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:10,display:{color:52224}}}],Pose:{RightArm:[-40.0f,20.0f,0.0f],LeftArm:[-40.0f,-20.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Tags:["garbage_can_ghost","normal_ghost","stunable","ghost","hidden","new_ghost","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.garbage_can_ghost.health
teleport @e[tag=this_entity,limit=1] ~ ~ ~ facing entity @p[gamemode=!spectator]
scoreboard players set @e[tag=this_entity,limit=1] PullStrength 15
scoreboard players set @e[tag=this_entity,limit=1] Move 3
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=this_entity,limit=1] TopVacuumDamage 0
scoreboard players set @e[tag=this_entity,limit=1] ElementHurtTime 0
scoreboard players set @e[tag=this_entity,limit=1] SecondFleeDamage -1
scoreboard players set @e[tag=this_entity,limit=1] HeartOffset -2
tag @e[tag=this_entity,limit=1] remove this_entity