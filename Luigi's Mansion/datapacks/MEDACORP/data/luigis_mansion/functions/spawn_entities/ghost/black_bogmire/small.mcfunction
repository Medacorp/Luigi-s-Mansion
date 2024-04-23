summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.black_bogmire"}',Tags:["affected_by_vacuum","ghost","ground_bound","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"black_bogmire"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.black_bogmire"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":1,"minecraft:custom_model_data":101}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","bogmire_model","found_owner","head","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.black_bogmire"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":2,"minecraft:custom_model_data":101,"minecraft:custom_data":{mirror:{components:{"minecraft:damage":3}}}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","bogmire_model","found_owner","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.black_bogmire"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":3,"minecraft:custom_model_data":101,"minecraft:custom_data":{mirror:{components:{"minecraft:damage":2}}}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","bogmire_model","found_owner","left_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.black_bogmire"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":1,"minecraft:custom_model_data":102}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","bogmire_model","found_owner","body","this_entity"],DisabledSlots:2039583}
execute as @e[tag=!model_piece,tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=!model_piece,tag=this_entity,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=model_piece,tag=this_entity] GhostNr = @e[tag=!model_piece,tag=this_entity,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeRotation run data get entity @s Rotation[0]
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.black_bogmire.small_speed
execute as @e[tag=this_entity,limit=1] store result score @s VanishTime run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.black_bogmire.small_vanish_time
data modify entity @e[tag=this_entity,limit=1] data.loot set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.black_bogmire.small_loot
data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.black_bogmire.small_damage
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeWidth 10
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeHeight 18
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 9
execute unless data storage luigis_mansion:data entity{appear_type:"none"} run tag @e[tag=this_entity,limit=1] add appear
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity