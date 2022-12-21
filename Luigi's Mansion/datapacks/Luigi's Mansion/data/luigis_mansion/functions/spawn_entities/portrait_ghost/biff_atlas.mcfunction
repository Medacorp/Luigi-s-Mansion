summon minecraft:armor_stand ~ ~0.6 ~ {CustomName:'{"translate":"luigis_mansion:entity.biff_atlas"}',Invisible:1b,NoGravity:1b,Marker:0b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["biff_atlas","portrait_ghost","portrait_ghost_pop","pearl_dropper","affected_by_vacuum","ghost","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~0.6 ~ {CustomName:'{"translate":"luigis_mansion:entity.biff_atlas"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","body","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~0.6 ~ {CustomName:'{"translate":"luigis_mansion:entity.biff_atlas"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~0.6 ~ {CustomName:'{"translate":"luigis_mansion:entity.biff_atlas"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","left_arm","this_entity"],DisabledSlots:2039583}
teleport @e[tag=biff_atlas,tag=this_entity,limit=1] ~ ~0.6 ~ ~ ~
teleport @e[tag=model_piece,tag=this_entity] ~ ~0.6 ~ ~ ~
execute as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=biff_atlas,tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=model_piece,tag=this_entity] GhostNr = @e[tag=biff_atlas,tag=this_entity,limit=1] GhostNr
execute as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s HomeRot run data get entity @s Rotation[0]
execute as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s PrevHealth store result score @s LastHealth store result score @s Health run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.biff_atlas.health
execute as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s MaxHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.biff_atlas.max_health
execute as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s TopVacuumDamage run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.biff_atlas.top_vacuum_damage
execute as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.biff_atlas.speed
execute as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.biff_atlas.flee_speed
data modify entity @e[tag=biff_atlas,tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.biff_atlas.loot
scoreboard players set @e[tag=biff_atlas,tag=this_entity,limit=1] PullStrength 10
scoreboard players set @e[tag=biff_atlas,tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=biff_atlas,tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=biff_atlas,tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=biff_atlas,tag=this_entity,limit=1] SecondFleeDamage -1
scoreboard players set @e[tag=biff_atlas,tag=this_entity,limit=1] HeartOffset -2
scoreboard players set @e[tag=biff_atlas,tag=this_entity,limit=1] EntitySizeW 10
scoreboard players set @e[tag=biff_atlas,tag=this_entity,limit=1] EntitySizeH 25
scoreboard players set @e[tag=biff_atlas,tag=this_entity,limit=1] EntityYOffset 10
data modify entity @e[tag=biff_atlas,tag=this_entity,limit=1] ArmorItems[3].tag.scan_message set from storage luigis_mansion:data entity.scan_message
execute if data storage luigis_mansion:data entity{can_talk_to:1b} run tag @e[tag=biff_atlas,tag=this_entity,limit=1] add can_talk_to
execute if data storage luigis_mansion:data entity{drops_pearls:0b} run tag @e[tag=biff_atlas,tag=this_entity,limit=1] remove pearl_dropper
execute if data storage luigis_mansion:data entity{drops_poison_mushrooms:0b} run tag @e[tag=biff_atlas,tag=this_entity,limit=1] add no_poison_mushroom_dropping
execute if data storage luigis_mansion:data entity.health as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth store result score @s PrevHealth run data get storage luigis_mansion:data entity.health
execute if data storage luigis_mansion:data entity.max_health as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s MaxHealth run data get storage luigis_mansion:data entity.max_health
execute if data storage luigis_mansion:data entity.top_vacuum_damage as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s TopVacuumDamage run data get storage luigis_mansion:data entity.top_vacuum_damage
execute if data storage luigis_mansion:data entity.speed as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data entity.speed
execute if data storage luigis_mansion:data entity.flee_speed as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data entity.flee_speed
execute if data storage luigis_mansion:data entity.loot run data modify entity @e[tag=biff_atlas,tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data entity.loot
execute if data storage luigis_mansion:data entity.second_flee_damage as @e[tag=biff_atlas,tag=this_entity,limit=1] store result score @s SecondFleeDamage run data get storage luigis_mansion:data entity.second_flee_damage
tag @e[tag=this_entity] remove this_entity
data remove storage luigis_mansion:data entity