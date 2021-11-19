summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.purple_bomber"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_button",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:11,display:{color:12255436}}}],HandItems:[{id:"minecraft:oak_button",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:11,display:{color:12255436}}},{id:"minecraft:oak_button",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:11,display:{color:12255436}}}],Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,-180.0f]},Tags:["purple_bomber","normal_ghost","stunable","ghost","ceiling_ghost","hidden","new_ghost","no_height_change","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.purple_bomber.health
teleport @e[tag=this_entity,limit=1] ~ ~ ~ facing entity @p[gamemode=!spectator]
scoreboard players set @e[tag=this_entity,limit=1] PullStrength 20
scoreboard players set @e[tag=this_entity,limit=1] Move 0
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=this_entity,limit=1] TopVacuumDamage 0
scoreboard players set @e[tag=this_entity,limit=1] ElementHurtTime 0
scoreboard players set @e[tag=this_entity,limit=1] SecondFleeDamage -1
scoreboard players set @e[tag=this_entity,limit=1] HeartOffset 8
tag @e[tag=this_entity,limit=1] remove this_entity