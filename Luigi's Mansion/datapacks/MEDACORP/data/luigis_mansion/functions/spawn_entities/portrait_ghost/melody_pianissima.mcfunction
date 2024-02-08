summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima"}',Tags:["portrait_ghost","portrait_ghost_pop","pearl_dropper","affected_by_vacuum","ghost","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"melody_pianissima"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{luigis_mansion:{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button"},Unbreakable:1b,Damage:1,CustomModelData:23}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","melody_pianissima_model","found_owner","head","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{luigis_mansion:{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button"},Unbreakable:1b,Damage:1,CustomModelData:24}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","melody_pianissima_model","found_owner","body","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:23,luigis_mansion:{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",mirror:{tag:{Damage:3}}}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","melody_pianissima_model","found_owner","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:23,luigis_mansion:{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",mirror:{tag:{Damage:2}}}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","melody_pianissima_model","found_owner","left_arm","this_entity"],DisabledSlots:2039583}
execute as @e[tag=!model_piece,tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=!model_piece,tag=this_entity,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=model_piece,tag=this_entity] GhostNr = @e[tag=!model_piece,tag=this_entity,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeRotation run data get entity @s Rotation[0]
execute as @e[tag=this_entity,limit=1] store result score @s PreviousHealth store result score @s LastHealth store result score @s Health run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.melody_pianissima.health
execute as @e[tag=this_entity,limit=1] store result score @s MaxHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.melody_pianissima.max_health
execute as @e[tag=this_entity,limit=1] store result score @s TopVacuumDamage run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.melody_pianissima.top_vacuum_damage
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.melody_pianissima.speed
execute as @e[tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.melody_pianissima.flee_speed
execute as @e[tag=this_entity,limit=1] store result score @s VanishTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.melody_pianissima.vanish_time
data modify entity @e[tag=this_entity,limit=1] data.loot set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.melody_pianissima.loot
data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.melody_pianissima.damage
scoreboard players set @e[tag=this_entity,limit=1] PullStrength 10
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=this_entity,limit=1] SecondFleeDamage -1
scoreboard players set @e[tag=this_entity,limit=1] HeartOffset -2
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeWidth 10
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeHeight 25
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 10
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity