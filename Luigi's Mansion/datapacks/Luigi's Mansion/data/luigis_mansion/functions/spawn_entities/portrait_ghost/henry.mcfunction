summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.henry"}',Invisible:1b,NoGravity:1b,Marker:0b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",Unbreakable:1b,Damage:1,CustomModelData:41}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["henry","portrait_ghost","portrait_ghost_pop","affected_by_vacuum","ghost","pearl_dropper","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.henry"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",Unbreakable:1b,Damage:1,CustomModelData:42}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","body","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.henry"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",Unbreakable:1b,Damage:2,CustomModelData:41,mirror:{tag:{Damage:3}}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.henry"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",Unbreakable:1b,Damage:3,CustomModelData:41,mirror:{tag:{Damage:2}}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","left_arm","this_entity"],DisabledSlots:2039583}
teleport @e[tag=henry,tag=this_entity,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=model_piece,tag=this_entity] ~ ~ ~ ~ ~
execute as @e[tag=henry,tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=henry,tag=this_entity,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=model_piece,tag=this_entity] GhostNr = @e[tag=henry,tag=this_entity,limit=1] GhostNr
execute as @e[tag=henry,tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=henry,tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=henry,tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=henry,tag=this_entity,limit=1] store result score @s HomeRotation run data get entity @s Rotation[0]
execute as @e[tag=henry,tag=this_entity,limit=1] store result score @s PreviousHealth store result score @s LastHealth store result score @s Health run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry.health
execute as @e[tag=henry,tag=this_entity,limit=1] store result score @s MaxHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry.max_health
execute as @e[tag=henry,tag=this_entity,limit=1] store result score @s TopVacuumDamage run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry.top_vacuum_damage
execute as @e[tag=henry,tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry.speed
execute as @e[tag=henry,tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry.flee_speed
execute as @e[tag=henry,tag=this_entity,limit=1] store result score @s VanishTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry.vanish_time
data modify entity @e[tag=henry,tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry.loot
data modify entity @e[tag=henry,tag=this_entity,limit=1] ArmorItems[3].tag.damage set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry.damage
scoreboard players set @e[tag=henry,tag=this_entity,limit=1] PullStrength 10
scoreboard players set @e[tag=henry,tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=henry,tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=henry,tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=henry,tag=this_entity,limit=1] SecondFleeDamage -1
scoreboard players set @e[tag=henry,tag=this_entity,limit=1] HeartOffset -2
scoreboard players set @e[tag=henry,tag=this_entity,limit=1] EntitySizeWidth 8
scoreboard players set @e[tag=henry,tag=this_entity,limit=1] EntitySizeHeight 20
scoreboard players set @e[tag=henry,tag=this_entity,limit=1] EntityYOffset 10
data modify entity @e[tag=henry,tag=this_entity,limit=1] ArmorItems[3].tag.scan_message set from storage luigis_mansion:data entity.scan_message
execute if data storage luigis_mansion:data entity{can_talk_to:1b} run tag @e[tag=henry,tag=this_entity,limit=1] add can_talk_to
execute if data storage luigis_mansion:data entity{drops_pearls:0b} run tag @e[tag=henry,tag=this_entity,limit=1] remove pearl_dropper
execute if data storage luigis_mansion:data entity{drops_poison_mushrooms:0b} run tag @e[tag=henry,tag=this_entity,limit=1] add no_poison_mushroom_dropping
execute if data storage luigis_mansion:data entity.health as @e[tag=henry,tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth store result score @s PreviousHealth run data get storage luigis_mansion:data entity.health
execute if data storage luigis_mansion:data entity.max_health as @e[tag=henry,tag=this_entity,limit=1] store result score @s MaxHealth run data get storage luigis_mansion:data entity.max_health
execute if data storage luigis_mansion:data entity.top_vacuum_damage as @e[tag=henry,tag=this_entity,limit=1] store result score @s TopVacuumDamage run data get storage luigis_mansion:data entity.top_vacuum_damage
execute if data storage luigis_mansion:data entity.speed as @e[tag=henry,tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data entity.speed
execute if data storage luigis_mansion:data entity.flee_speed as @e[tag=henry,tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data entity.flee_speed
execute if data storage luigis_mansion:data entity.loot run data modify entity @e[tag=henry,tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data entity.loot
execute if data storage luigis_mansion:data entity.damage run data modify entity @e[tag=henry,tag=this_entity,limit=1] ArmorItems[3].tag.damage set from storage luigis_mansion:data entity.damage
execute if data storage luigis_mansion:data entity.second_flee_damage as @e[tag=henry,tag=this_entity,limit=1] store result score @s SecondFleeDamage run data get storage luigis_mansion:data entity.second_flee_damage
execute if data storage luigis_mansion:data entity.vanish_time as @e[tag=henry,tag=this_entity,limit=1] store result score @s VanishTime run data get storage luigis_mansion:data entity.vanish_time
tag @e[tag=this_entity] remove this_entity
data remove storage luigis_mansion:data entity