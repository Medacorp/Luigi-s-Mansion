summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"translate":"luigis_mansion:entity.spooky"}',Invisible:1b,NoGravity:1b,Marker:0b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["spooky","portrait_ghost","portrait_ghost_pop","pearl_dropper","ghost","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"translate":"luigis_mansion:entity.spooky"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","body","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"translate":"luigis_mansion:entity.spooky"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"translate":"luigis_mansion:entity.spooky"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","left_arm","this_entity"],DisabledSlots:2039583}
teleport @e[tag=spooky,tag=this_entity,limit=1] ~ ~-1 ~ ~ ~
teleport @e[tag=model_piece,tag=this_entity] ~ ~-1 ~ ~ ~
execute as @e[tag=spooky,tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=spooky,tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=model_piece,tag=this_entity] GhostNr = @e[tag=spooky,tag=this_entity,limit=1] GhostNr
execute as @e[tag=spooky,tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=spooky,tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=spooky,tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=spooky,tag=this_entity,limit=1] store result score @s HomeRot run data get entity @s Rotation[0]
execute as @e[tag=spooky,tag=this_entity,limit=1] store result score @s PrevHealth store result score @s LastHealth store result score @s Health run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky.health
execute as @e[tag=spooky,tag=this_entity,limit=1] store result score @s MaxHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky.max_health
execute as @e[tag=spooky,tag=this_entity,limit=1] store result score @s TopVacuumDamage run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky.top_vacuum_damage
execute as @e[tag=spooky,tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky.speed
execute as @e[tag=spooky,tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky.flee_speed
scoreboard players set @e[tag=spooky,tag=this_entity,limit=1] PullStrength 10
scoreboard players set @e[tag=spooky,tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=spooky,tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=spooky,tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=spooky,tag=this_entity,limit=1] SecondFleeDamage -1
scoreboard players set @e[tag=spooky,tag=this_entity,limit=1] HeartOffset -2
tag @e[tag=this_entity] remove this_entity