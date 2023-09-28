summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"e3_demo:entity.body_slammer"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{namespace:"e3_demo",id:"body_slammer",visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",Unbreakable:1b,Damage:1,CustomModelData:28,mirror:{id:"minecraft:leather_chestplate"},display:{color:6881535}}}],HandItems:[{id:"minecraft:stone_button",Count:1b,tag:{visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",Unbreakable:1b,Damage:2,CustomModelData:28,mirror:{id:"minecraft:leather_chestplate",tag:{Damage:3}},display:{color:6881535}}},{id:"minecraft:stone_button",Count:1b,tag:{visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",Unbreakable:1b,Damage:3,CustomModelData:28,mirror:{id:"minecraft:leather_chestplate",tag:{Damage:2}},display:{color:6881535}}}],Pose:{RightArm:[-90.0f,0.0f,0.0f],LeftArm:[-90.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Tags:["normal_ghost","stunnable","affected_by_vacuum","affected_by_fire","affected_by_water","affected_by_ice","ghost","hidden","beta_appear","new_ghost","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.body_slammer.health
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.body_slammer.speed
execute as @e[tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.body_slammer.flee_speed
execute as @e[tag=this_entity,limit=1] store result score @s VanishTime run data get storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.body_slammer.vanish_time
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.body_slammer.loot
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.damage set from storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.body_slammer.damage
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
scoreboard players set @e[tag=this_entity,limit=1] HeartOffset -2
scoreboard players set @e[tag=this_entity,limit=1] SpawnTime 160
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeWidth 8
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeHeight 12
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 13
scoreboard players set @e[tag=this_entity,limit=1] AttackType 2
execute if data storage luigis_mansion:data entity{attack_type:"punch"} run scoreboard players set @e[tag=this_entity,limit=1] AttackType 0
execute if data storage luigis_mansion:data entity{attack_type:"basher"} run scoreboard players set @e[tag=this_entity,limit=1] AttackType 1
execute if data storage luigis_mansion:data entity{attack_type:"basher"} run tag @e[tag=this_entity,limit=1] add basher
execute if data storage luigis_mansion:data entity{attack_type:"earthquake"} run scoreboard players set @e[tag=this_entity,limit=1] AttackType 3
execute if data storage luigis_mansion:data entity{appear_type:"normal"} run tag @e[tag=this_entity,limit=1] remove beta_appear
execute if data storage luigis_mansion:data entity{appear_type:"none"} run tag @e[tag=this_entity,limit=1] remove beta_appear
execute if data storage luigis_mansion:data entity{appear_type:"none"} run tag @e[tag=this_entity,limit=1] add no_appear
execute if data storage luigis_mansion:data entity{disappear_on_vanish:1b} run tag @e[tag=this_entity,limit=1] add disappear_on_vanish
execute if data storage luigis_mansion:data entity.health as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data entity.health
execute if data storage luigis_mansion:data entity.speed as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data entity.speed
execute if data storage luigis_mansion:data entity.flee_speed as @e[tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data entity.flee_speed
execute if data storage luigis_mansion:data entity.second_flee_damage as @e[tag=this_entity,limit=1] store result score @s SecondFleeDamage run data get storage luigis_mansion:data entity.second_flee_damage
execute if data storage luigis_mansion:data entity.vanish_time as @e[tag=this_entity,limit=1] store result score @s VanishTime run data get storage luigis_mansion:data entity.vanish_time
execute if data storage luigis_mansion:data entity.training_room_score as @e[tag=this_entity,limit=1] store result score @s TrainingRoomScore run data get storage luigis_mansion:data entity.training_room_score
execute if data storage luigis_mansion:data entity.loot run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data entity.loot
execute if data storage luigis_mansion:data entity.damage run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.damage set from storage luigis_mansion:data entity.damage
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity