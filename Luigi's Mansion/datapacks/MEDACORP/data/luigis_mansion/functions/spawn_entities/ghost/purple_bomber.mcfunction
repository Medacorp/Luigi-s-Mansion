summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.purple_bomber"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:11,luigis_mansion:{namespace:"luigis_mansion",id:"purple_bomber",visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",mirror:{id:"minecraft:leather_chestplate"}},display:{color:12255436}}}],HandItems:[{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:11,luigis_mansion:{visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",mirror:{id:"minecraft:leather_chestplate",tag:{Damage:3}}},display:{color:12255436}}},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:11,luigis_mansion:{visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",mirror:{id:"minecraft:leather_chestplate",tag:{Damage:2}}},display:{color:12255436}}}],Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,-180.0f]},Tags:["normal_ghost","stunnable","affected_by_vacuum","affected_by_fire","affected_by_water","affected_by_ice","ghost","ceiling_ghost","hidden","new_ghost","no_height_change","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.purple_bomber.health
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.purple_bomber.speed
execute as @e[tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.purple_bomber.flee_speed
execute as @e[tag=this_entity,limit=1] store result score @s VanishTime run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.purple_bomber.vanish_time
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion.loot set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.purple_bomber.loot
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion.damage set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.purple_bomber.damage
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
scoreboard players set @e[tag=this_entity,limit=1] HeartOffset 8
scoreboard players set @e[tag=this_entity,limit=1] SpawnTime 160
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeWidth 16
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeHeight 26
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 20
scoreboard players set @e[tag=this_entity,limit=1] AttackType 1
execute if data storage luigis_mansion:data entity.attack_type run function luigis_mansion:spawn_entities/setup/attack_type/ceiling_ghost
execute if data storage luigis_mansion:data entity.appear_type run function luigis_mansion:spawn_entities/setup/attack_type/none
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity