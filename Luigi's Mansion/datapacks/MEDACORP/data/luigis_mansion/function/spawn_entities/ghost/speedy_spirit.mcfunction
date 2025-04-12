summon minecraft:marker ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.speedy_spirit"},Tags:["normal_ghost","stunable","affected_by_vacuum","affected_by_fire","affected_by_water","affected_by_ice","hurt_by_fire","hurt_by_water","hurt_by_ice","ghost","optional_ghost","hidden","new_ghost","disappear_on_vanish","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"speedy_spirit"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.speedy_spirit"},Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,equipment:{head:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/ghost","minecraft:custom_model_data":{flags:[1b],floats:[0f],colors:[65508]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b]}}}}}}},Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","ghost_model","found_owner","head","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.speedy_spirit"},Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,equipment:{head:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/ghost","minecraft:custom_model_data":{flags:[1b],floats:[1f],colors:[65508]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b],floats:[2f]}}}}}}},Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","ghost_model","found_owner","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.speedy_spirit"},Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,equipment:{head:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/ghost","minecraft:custom_model_data":{flags:[1b],floats:[2f],colors:[65508]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b],floats:[1f]}}}}}}},Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","ghost_model","found_owner","left_arm","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit.health
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit.speed
execute as @e[tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit.flee_speed
execute as @e[tag=this_entity,limit=1] store result score @s VanishTime run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit.vanish_time
execute as @e[tag=this_entity,limit=1] store result score @s PullStrength run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit.pull.strength
execute as @e[tag=this_entity,limit=1] store result score @s PullAngle run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit.pull.angle
data modify entity @e[tag=this_entity,limit=1] data.loot set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit.loot
data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit.damage
execute if data storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit{flee_task:"random"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 0
execute if data storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit{flee_task:"alternate"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 1
execute if data storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit{flee_task:"circle"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 2
execute if data storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit{flee_task:"random_in_range"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 3
execute if data storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit{flee_task:"loops"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 4
teleport @e[tag=this_entity,limit=1] ~ ~ ~ facing entity @p[tag=!spectator]
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=this_entity,limit=1] TopVacuumDamage 0
scoreboard players set @e[tag=this_entity,limit=1] ElementHurtTime 0
scoreboard players set @e[tag=this_entity,limit=1] SecondFleeDamage -1
scoreboard players set @e[tag=this_entity,limit=1] HeartOffset -1
scoreboard players set @e[tag=this_entity,limit=1] SpawnTime 160
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeWidth 8
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeHeight 12
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 13
scoreboard players set @e[tag=this_entity,limit=1] AttackType 0
execute if data storage luigis_mansion:data entity.attack_type run function luigis_mansion:spawn_entities/setup/attack_type/speedy_spirit
execute if data storage luigis_mansion:data entity.appear_type run function luigis_mansion:spawn_entities/setup/appear_type/beta
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity