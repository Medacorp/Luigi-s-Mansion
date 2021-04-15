summon minecraft:villager ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.madame_clairvoya"}',NoAI:1b,CustomNameVisible:0b,Invulnerable:1b,Silent:1b,DeathLootTable:"luigis_mansion:entities/madame_clairvoya",Offers:{},AbsorptionAmount:1.0f,ActiveEffects:[{Id:14b,Ambient:1b,Duration:1000000,Amplifier:0,ShowParticles:0b}],HandDropChances:[1.0f,1.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],PersistenceRequired:1b,LeftHanded:0b,Tags:["madame_clairvoya","portrait_ghost","pearl_dropper","ghost","no_y_sync","this_entity"]}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.madame_clairvoya"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{}],Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]},Tags:["madame_clairvoya_head","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.madame_clairvoya"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["madame_clairvoya_body","this_entity"],DisabledSlots:2039583}
teleport @e[tag=madame_clairvoya,tag=this_entity,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=madame_clairvoya_head,tag=this_entity,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=madame_clairvoya_body,tag=this_entity,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=madame_clairvoya,tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=madame_clairvoya,tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=madame_clairvoya_head,tag=this_entity,limit=1] GhostNr = @e[tag=madame_clairvoya,tag=this_entity,limit=1] GhostNr
scoreboard players operation @e[tag=madame_clairvoya_body,tag=this_entity,limit=1] GhostNr = @e[tag=madame_clairvoya,tag=this_entity,limit=1] GhostNr
execute as @e[tag=madame_clairvoya,tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=madame_clairvoya,tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=madame_clairvoya,tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=madame_clairvoya,tag=this_entity,limit=1] store result score @s HomeRot run data get entity @s Rotation[0]
execute as @e[tag=madame_clairvoya,tag=this_entity,limit=1] store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.madame_clairvoya.health
execute as @e[tag=madame_clairvoya,tag=this_entity,limit=1] run scoreboard players set @s MaxHealth 10000
scoreboard players operation @e[tag=madame_clairvoya,tag=this_entity,limit=1] MaxHealth *= #multiply_health Selected
scoreboard players operation @e[tag=madame_clairvoya,tag=this_entity,limit=1] MaxHealth /= #100 Constants
scoreboard players operation @e[tag=madame_clairvoya,tag=this_entity,limit=1] MaxHealth += #extra_health Selected
execute as @e[tag=madame_clairvoya,tag=this_entity,limit=1] if score @s LastHealth matches -1 store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.madame_clairvoya.health int 1 run scoreboard players operation @s LastHealth = @s MaxHealth
execute as @e[tag=madame_clairvoya,tag=this_entity,limit=1] run scoreboard players operation @s Health = @s LastHealth
execute as @e[tag=madame_clairvoya,tag=this_entity,limit=1] run scoreboard players operation @s PrevHealth = @s Health
scoreboard players set @e[tag=madame_clairvoya,tag=this_entity,limit=1] PullStrength 10
scoreboard players set @e[tag=madame_clairvoya,tag=this_entity,limit=1] Move 4
scoreboard players set @e[tag=madame_clairvoya,tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=madame_clairvoya,tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=madame_clairvoya,tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=madame_clairvoya,tag=this_entity,limit=1] ClairvoyaSpoke 0
execute if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_hat:1b} run scoreboard players add @e[tag=madame_clairvoya,tag=this_entity,limit=1] ClairvoyaSpoke 1
execute if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_letter:1b} run scoreboard players add @e[tag=madame_clairvoya,tag=this_entity,limit=1] ClairvoyaSpoke 1
execute if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_star:1b} run scoreboard players add @e[tag=madame_clairvoya,tag=this_entity,limit=1] ClairvoyaSpoke 1
execute if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_glove:1b} run scoreboard players add @e[tag=madame_clairvoya,tag=this_entity,limit=1] ClairvoyaSpoke 1
execute if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_shoe:1b} run scoreboard players add @e[tag=madame_clairvoya,tag=this_entity,limit=1] ClairvoyaSpoke 1
tag @e[tag=madame_clairvoya,tag=this_entity,limit=1] remove this_entity
tag @e[tag=madame_clairvoya_head,tag=this_entity,limit=1] remove this_entity
tag @e[tag=madame_clairvoya_body,tag=this_entity,limit=1] remove this_entity