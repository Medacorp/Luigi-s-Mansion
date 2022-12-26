execute if score #mirrored Selected matches 0 run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.ghost_guy"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",Unbreakable:1b,Damage:1,CustomModelData:6,display:{color:8344604}}}],HandItems:[{id:"minecraft:stone_button",Count:1b,tag:{visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",Unbreakable:1b,Damage:2,CustomModelData:5,display:{color:8344604}}},{id:"minecraft:stone_button",Count:1b,tag:{visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",Unbreakable:1b,Damage:3,CustomModelData:4,display:{color:8344604}}}],Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Tags:["ghost_guy","normal_ghost","affected_by_vacuum","affected_by_fire","affected_by_water","affected_by_ice","ghost","dancing","hidden","new_ghost","no_hidden_move","this_entity"],DisabledSlots:2039583}
execute if score #mirrored Selected matches 1 run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.ghost_guy"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",Unbreakable:1b,Damage:1,CustomModelData:6,display:{color:8344604}}}],HandItems:[{id:"minecraft:stone_button",Count:1b,tag:{visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",Unbreakable:1b,Damage:2,CustomModelData:4,display:{color:8344604}}},{id:"minecraft:stone_button",Count:1b,tag:{visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",Unbreakable:1b,Damage:3,CustomModelData:5,display:{color:8344604}}}],Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Tags:["ghost_guy","normal_ghost","affected_by_vacuum","affected_by_fire","affected_by_water","affected_by_ice","ghost","dancing","hidden","new_ghost","no_hidden_move","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.dancing_ghost_guy.health
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.dancing_ghost_guy.speed
execute as @e[tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data current_state.current_data.ghosts.dancing_ghost_guy.flee_speed
execute as @e[tag=this_entity,limit=1] store result score @s VanishTime run data get storage luigis_mansion:data current_state.current_data.ghosts.dancing_ghost_guy.vanish_time
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data current_state.current_data.ghosts.dancing_ghost_guy.loot
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.damage set from storage luigis_mansion:data current_state.current_data.ghosts.dancing_ghost_guy.damage
teleport @e[tag=this_entity,limit=1] ~ ~ ~ facing entity @p[gamemode=!spectator]
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
scoreboard players set @e[tag=this_entity,limit=1] PullStrength 20
scoreboard players set @e[tag=this_entity,limit=1] WaitTime 0
scoreboard players set @e[tag=this_entity,limit=1] Distance 0
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=this_entity,limit=1] TopVacuumDamage 0
scoreboard players set @e[tag=this_entity,limit=1] ElementHurtTime 0
scoreboard players set @e[tag=this_entity,limit=1] SecondFleeDamage -1
scoreboard players set @e[tag=this_entity,limit=1] HeartOffset -2
scoreboard players set @e[tag=this_entity,limit=1] SpawnTime 160
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeW 8
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeH 12
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 13
scoreboard players set @e[tag=this_entity,limit=1] AttackType 1
execute if data storage luigis_mansion:data entity{attack_type:"stab"} run scoreboard players set @e[tag=this_entity,limit=1] AttackType 0
execute if data storage luigis_mansion:data entity{appear_type:"none"} run tag @e[tag=this_entity,limit=1] add no_appear
execute if data storage luigis_mansion:data entity{disappear_on_vanish:1b} run tag @e[tag=this_entity,limit=1] add disappear_on_vanish
execute if data storage luigis_mansion:data entity.health as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data entity.health
execute if data storage luigis_mansion:data entity.speed as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data entity.speed
execute if data storage luigis_mansion:data entity.flee_speed as @e[tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data entity.flee_speed
execute if data storage luigis_mansion:data entity.second_flee_damage as @e[tag=this_entity,limit=1] store result score @s SecondFleeDamage run data get storage luigis_mansion:data entity.second_flee_damage
execute if data storage luigis_mansion:data entity.vanish_time as @e[tag=this_entity,limit=1] store result score @s VanishTime run data get storage luigis_mansion:data entity.vanish_time
execute if data storage luigis_mansion:data entity.training_room_score as @e[tag=this_entity,limit=1] store result score @s GhostCaught run data get storage luigis_mansion:data entity.training_room_score
execute if data storage luigis_mansion:data entity.loot run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data entity.loot
execute if data storage luigis_mansion:data entity.damage run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.damage set from storage luigis_mansion:data entity.damage
scoreboard players operation @e[tag=this_entity,limit=1] GhostGuyCouple > @e[tag=ghost_guy,tag=!this_entity] GhostGuyCouple
scoreboard players add @e[tag=this_entity,limit=1] GhostGuyCouple 1
scoreboard players operation @e[tag=this_entity,limit=1] GhostGuyCouple = @e[tag=ghost_guy,distance=..2,tag=!this_entity,limit=1] GhostGuyCouple
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity