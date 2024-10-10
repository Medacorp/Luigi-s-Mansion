summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.waiter"}',Tags:["normal_ghost","stunable","affected_by_vacuum","affected_by_fire","affected_by_water","affected_by_ice","hurt_by_fire","hurt_by_water","hurt_by_ice","ghost","hidden","new_ghost","same_room_players_only","same_room_select_furniture","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"waiter"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.waiter"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty","minecraft:unbreakable":{},"minecraft:damage":1,"minecraft:max_damage":4,"minecraft:custom_data":{visible:"luigis_mansion:entity/waiter",mirror:{components:{"minecraft:item_model":"luigis_mansion:entity/waiter"}}}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","waiter_model","found_owner","head","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.waiter"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty","minecraft:unbreakable":{},"minecraft:damage":2,"minecraft:max_damage":4,"minecraft:custom_model_data":0,"minecraft:custom_data":{visible:"luigis_mansion:entity/waiter",mirror:{components:{"minecraft:item_model":"luigis_mansion:entity/waiter","minecraft:damage":3}},model_data:{default:{components:{"minecraft:custom_model_data":0}},food:{components:{"minecraft:custom_model_data":1}}}}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","waiter_model","found_owner","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.waiter"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty","minecraft:unbreakable":{},"minecraft:damage":3,"minecraft:max_damage":4,"minecraft:custom_model_data":0,"minecraft:custom_data":{visible:"luigis_mansion:entity/waiter",mirror:{components:{"minecraft:item_model":"luigis_mansion:entity/waiter","minecraft:damage":2}},model_data:{default:{components:{"minecraft:custom_model_data":0}},food:{components:{"minecraft:custom_model_data":1}}}}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","waiter_model","found_owner","left_arm","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.waiter.health
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.waiter.speed
execute as @e[tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.waiter.flee_speed
execute as @e[tag=this_entity,limit=1] store result score @s VanishTime run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.waiter.vanish_time
execute as @e[tag=this_entity,limit=1] store result score @s PullStrength run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.waiter.pull.strength
execute as @e[tag=this_entity,limit=1] store result score @s PullAngle run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.waiter.pull.angle
data modify entity @e[tag=this_entity,limit=1] data.loot set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.waiter.loot
data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.waiter.damage
execute if data storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.waiter{flee_task:"random"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 0
execute if data storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.waiter{flee_task:"alternate"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 1
execute if data storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.waiter{flee_task:"circle"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 2
execute if data storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.waiter{flee_task:"random_in_range"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 3
execute if data storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.waiter{flee_task:"loops"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 4
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
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity