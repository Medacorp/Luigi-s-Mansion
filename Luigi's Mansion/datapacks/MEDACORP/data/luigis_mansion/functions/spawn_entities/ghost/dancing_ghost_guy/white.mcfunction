summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.ghost_guy"}',Tags:["normal_ghost","stunable","affected_by_vacuum","affected_by_fire","affected_by_water","affected_by_ice","hurt_by_fire","hurt_by_water","hurt_by_ice","ghost","dancing","hidden","no_hidden_move","new_ghost","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"dancing_ghost_guy"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.ghost_guy"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:4,luigis_mansion:{visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",mirror:{id:"minecraft:leather_chestplate"},model_data:{default:{tag:{CustomModelData:4}},equipment:{tag:{CustomModelData:6}}}},display:{color:15395562}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","ghost_guy_model","found_owner","head","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.ghost_guy"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:4,luigis_mansion:{visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",mirror:{id:"minecraft:leather_chestplate",tag:{Damage:3}},model_data:{default:{tag:{CustomModelData:4}},equipment:{tag:{CustomModelData:5}}}},display:{color:15395562}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","ghost_guy_model","found_owner","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.ghost_guy"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:4,luigis_mansion:{visible:"minecraft:leather_chestplate",invisible:"minecraft:stone_button",mirror:{id:"minecraft:leather_chestplate",tag:{Damage:2}},model_data:{default:{tag:{CustomModelData:4}},equipment:{tag:{CustomModelData:5}}}},display:{color:15395562}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","ghost_guy_model","found_owner","left_arm","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.dancing_ghost_guy.health
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.dancing_ghost_guy.speed
execute as @e[tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.dancing_ghost_guy.flee_speed
execute as @e[tag=this_entity,limit=1] store result score @s VanishTime run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.dancing_ghost_guy.vanish_time
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion.loot set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.dancing_ghost_guy.loot
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion.damage set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.dancing_ghost_guy.damage
teleport @e[tag=this_entity,limit=1] ~ ~ ~ facing entity @p[tag=!spectator]
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
scoreboard players set @e[tag=this_entity,limit=1] HeartOffset -1
scoreboard players set @e[tag=this_entity,limit=1] SpawnTime 160
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeWidth 8
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeHeight 12
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 13
scoreboard players set @e[tag=this_entity,limit=1] AttackType 1
execute if data storage luigis_mansion:data entity.attack_type run function luigis_mansion:spawn_entities/setup/attack_type/ghost_guy
execute if data storage luigis_mansion:data entity.appear_type run function luigis_mansion:spawn_entities/setup/appear_type/none
function luigis_mansion:spawn_entities/setup/default
execute unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"dancing_ghost_guy"}}},distance=..2,tag=!this_entity,limit=1] store result score @e[tag=this_entity,limit=1] GhostGuyCouple run data get storage luigis_mansion:data unique_id.dancing_ghost_guy_couple
execute unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"dancing_ghost_guy"}}},distance=..2,tag=!this_entity,limit=1] store result storage luigis_mansion:data unique_id.dancing_ghost_guy_couple int 1 run scoreboard players add @e[tag=this_entity,limit=1] GhostGuyCouple 1
execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"dancing_ghost_guy"}}},distance=..2,tag=!this_entity,tag=!has_partner,limit=1] run scoreboard players operation @e[tag=this_entity,limit=1] GhostGuyCouple = @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"dancing_ghost_guy"}}},distance=..2,tag=!this_entity,tag=!has_partner,limit=1] GhostGuyCouple
execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"dancing_ghost_guy"}}},distance=..2,tag=!this_entity,tag=!has_partner,limit=1] run tag @e[tag=this_entity,limit=1] add has_partner
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"dancing_ghost_guy"}}},distance=..2,tag=!this_entity,tag=!has_partner,limit=1] add has_partner
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity