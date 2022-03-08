summon minecraft:armor_stand ~ ~0.6 ~ {CustomName:'{"translate":"luigis_mansion:entity.sir_weston"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Marker:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["sir_weston","portrait_ghost","portrait_ghost_pop","pearl_dropper","ghost","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~0.6 ~ {CustomName:'{"translate":"luigis_mansion:entity.sir_weston"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","body","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~0.6 ~ {CustomName:'{"translate":"luigis_mansion:entity.sir_weston"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~0.6 ~ {CustomName:'{"translate":"luigis_mansion:entity.sir_weston"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","left_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~0.3 ~ {CustomName:'{"translate":"luigis_mansion:entity.sir_weston"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","sir_weston_ice","this_entity"],DisabledSlots:2039583}
teleport @e[tag=sir_weston,tag=this_entity,limit=1] ~ ~0.6 ~ ~ ~
teleport @e[tag=model_piece,tag=this_entity] ~ ~0.6 ~ ~ ~
teleport @e[tag=sir_weston_ice,tag=this_entity] ~ ~0.3 ~ ~ ~
execute as @e[tag=sir_weston,tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=sir_weston,tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=model_piece,tag=this_entity] GhostNr = @e[tag=sir_weston,tag=this_entity,limit=1] GhostNr
execute as @e[tag=sir_weston,tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=sir_weston,tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=sir_weston,tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=sir_weston,tag=this_entity,limit=1] store result score @s HomeRot run data get entity @s Rotation[0]
execute as @e[tag=sir_weston,tag=this_entity,limit=1] store result score @s PrevHealth store result score @s LastHealth store result score @s Health run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.sir_weston.health
execute as @e[tag=sir_weston,tag=this_entity,limit=1] store result score @s MaxHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.sir_weston.max_health
execute as @e[tag=sir_weston,tag=this_entity,limit=1] store result score @s TopVacuumDamage run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.sir_weston.top_vacuum_damage
scoreboard players set @e[tag=sir_weston,tag=this_entity,limit=1] PullStrength 10
scoreboard players set @e[tag=sir_weston,tag=this_entity,limit=1] Move 10
scoreboard players set @e[tag=sir_weston,tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=sir_weston,tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=sir_weston,tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=sir_weston,tag=this_entity,limit=1] SecondFleeDamage -1
scoreboard players set @e[tag=sir_weston,tag=this_entity,limit=1] HeartOffset -2
tag @e[tag=this_entity] remove this_entity