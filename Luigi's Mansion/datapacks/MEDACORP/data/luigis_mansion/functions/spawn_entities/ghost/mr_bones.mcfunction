summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.mr_bones"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:96,luigis_mansion:{entity:{namespace:"luigis_mansion",id:"mr_bones"},visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",mirror:{id:"minecraft:diamond_pickaxe"}}}}],HandItems:[{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:96,luigis_mansion:{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",mirror:{id:"minecraft:diamond_pickaxe",tag:{Damage:3}}}}},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:96,luigis_mansion:{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",mirror:{id:"minecraft:diamond_pickaxe",tag:{Damage:2}}}}}],Pose:{RightArm:[0.0f,20.0f,-160.0f],LeftArm:[0.0f,20.0f,110.0f],Head:[0.0f,0.0f,140.0f]},Tags:["normal_ghost","stunable","affected_by_vacuum","affected_by_fire","affected_by_water","affected_by_ice","ghost","hidden","new_ghost","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.mr_bones"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:97,luigis_mansion:{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",mirror:{id:"minecraft:diamond_pickaxe"}}}}],HandItems:[{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:97,luigis_mansion:{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",mirror:{id:"minecraft:diamond_pickaxe",tag:{Damage:3}}}}},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:97,luigis_mansion:{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",mirror:{id:"minecraft:diamond_pickaxe",tag:{Damage:2}}}}}],Pose:{RightArm:[-20.0f,0.0f,-100.0f],LeftArm:[20.0f,0.0f,30.0f],Head:[-10.0f,20.0f,25.0f]},Tags:["model_piece","found_owner","body","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece,limit=1] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece,limit=1] remove this_entity
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.mr_bones.health
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.mr_bones.speed
execute as @e[tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.mr_bones.flee_speed
execute as @e[tag=this_entity,limit=1] store result score @s VanishTime run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.mr_bones.vanish_time
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion.loot set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.mr_bones.loot
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion.damage set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.mr_bones.damage
teleport @e[tag=this_entity,limit=1] ~ ~ ~ facing entity @p[gamemode=!spectator]
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
scoreboard players set @e[tag=this_entity,limit=1] PullStrength 15
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=this_entity,limit=1] TopVacuumDamage 0
scoreboard players set @e[tag=this_entity,limit=1] ElementHurtTime 0
scoreboard players set @e[tag=this_entity,limit=1] HeartOffset 3
scoreboard players set @e[tag=this_entity,limit=1] SpawnTime 160
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeWidth 8
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeHeight 12
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 13
execute if data storage luigis_mansion:data entity.appear_type run function luigis_mansion:spawn_entities/setup/appear_type/none
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity