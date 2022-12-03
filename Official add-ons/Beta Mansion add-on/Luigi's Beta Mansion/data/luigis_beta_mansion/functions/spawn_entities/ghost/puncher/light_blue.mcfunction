summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_beta_mansion:entity.puncher"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_button",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:27,display:{color:65491}}}],HandItems:[{id:"minecraft:oak_button",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:27,display:{color:65491}}},{id:"minecraft:oak_button",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:27,display:{color:65491}}}],Pose:{RightArm:[-90.0f,0.0f,0.0f],LeftArm:[-90.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Tags:["beta_puncher","normal_ghost","stunnable","ghost","hidden","beta_appear","new_ghost","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.beta_puncher.health
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.beta_puncher.speed
execute as @e[tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data current_state.current_data.ghosts.beta_puncher.flee_speed
teleport @e[tag=this_entity,limit=1] ~ ~ ~ facing entity @p[gamemode=!spectator]
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
scoreboard players set @e[tag=this_entity,limit=1] PullStrength 20
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=this_entity,limit=1] TopVacuumDamage 0
scoreboard players set @e[tag=this_entity,limit=1] ElementHurtTime 0
scoreboard players set @e[tag=this_entity,limit=1] SecondFleeDamage -1
scoreboard players set @e[tag=this_entity,limit=1] HeartOffset -2
scoreboard players set @e[tag=this_entity,limit=1] SpawnTime 160
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeW 8
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeH 20
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 10
tag @e[tag=this_entity,limit=1] remove this_entity