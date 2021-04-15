summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"translate":"luigis_mansion:entity.chauncey"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{}],Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]},Tags:["chauncey","portrait_ghost","ghost","no_y_sync","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"translate":"luigis_mansion:entity.chauncey"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["chauncey_body","this_entity"],DisabledSlots:2039583}
teleport @e[tag=chauncey,tag=this_entity,limit=1] ~ ~-1 ~ ~ ~
teleport @e[tag=chauncey_body,tag=this_entity,limit=1] ~ ~-1 ~ ~ ~
execute as @e[tag=chauncey,tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=chauncey,tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=chauncey_body,tag=this_entity,limit=1] GhostNr = @e[tag=chauncey,tag=this_entity,limit=1] GhostNr
execute as @e[tag=chauncey,tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=chauncey,tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=chauncey,tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=chauncey,tag=this_entity,limit=1] store result score @s HomeRot run data get entity @s Rotation[0]
execute as @e[tag=chauncey,tag=this_entity,limit=1] store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey.health
execute as @e[tag=chauncey,tag=this_entity,limit=1] run scoreboard players set @s MaxHealth 10000
scoreboard players operation @e[tag=chauncey,tag=this_entity,limit=1] MaxHealth *= #multiply_health Selected
scoreboard players operation @e[tag=chauncey,tag=this_entity,limit=1] MaxHealth /= #100 Constants
scoreboard players operation @e[tag=chauncey,tag=this_entity,limit=1] MaxHealth += #extra_health Selected
execute as @e[tag=chauncey,tag=this_entity,limit=1] if score @s LastHealth matches -1 store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey.health int 1 run scoreboard players operation @s LastHealth = @s MaxHealth
execute as @e[tag=chauncey,tag=this_entity,limit=1] run scoreboard players operation @s Health = @s LastHealth
execute as @e[tag=chauncey,tag=this_entity,limit=1] run scoreboard players operation @s PrevHealth = @s Health
scoreboard players set @e[tag=chauncey,tag=this_entity,limit=1] PullStrength 7
scoreboard players set @e[tag=chauncey,tag=this_entity,limit=1] Move 1
scoreboard players set @e[tag=chauncey,tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=chauncey,tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=chauncey,tag=this_entity,limit=1] VulnerableTime 0
tag @e[tag=chauncey,tag=this_entity,limit=1] remove this_entity
tag @e[tag=chauncey_body,tag=this_entity,limit=1] remove this_entity