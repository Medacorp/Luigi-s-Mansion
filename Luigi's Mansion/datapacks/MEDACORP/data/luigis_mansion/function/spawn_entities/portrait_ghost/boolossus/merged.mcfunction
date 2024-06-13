summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boolossus"}',Tags:["affected_by_vacuum","affected_by_vacuum","ghost","merged","portrait_ghost","visible","vacuumable","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boolossus"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":1,"minecraft:custom_model_data":62}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","boo_model","found_owner","head","this_entity","this_model"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boolossus"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":2,"minecraft:custom_model_data":62,"minecraft:custom_data":{mirror:{components:{"minecraft:damage":3}}}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","boo_model","found_owner","right_arm","this_entity","this_model"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boolossus"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":3,"minecraft:custom_model_data":62,"minecraft:custom_data":{mirror:{components:{"minecraft:damage":2}}}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","boo_model","found_owner","left_arm","this_entity","this_model"],DisabledSlots:2039583}
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] Wave 0
scoreboard players set @e[tag=this_entity,limit=1] Dialog 0
scoreboard players set @e[tag=this_entity,limit=1] VanishTime -1
execute as @e[tag=this_entity,limit=1] store result score @s Health run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus.health
execute as @e[tag=this_entity,limit=1] store result score @s MaxHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus.max_health
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus.merged_speed
data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus.damage
function luigis_mansion:spawn_entities/setup/default
execute if entity @e[tag=this_entity,limit=1,scores={Health=1}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 48
execute if entity @e[tag=this_entity,limit=1,scores={Health=2}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 49
execute if entity @e[tag=this_entity,limit=1,scores={Health=3}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 50
execute if entity @e[tag=this_entity,limit=1,scores={Health=4}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 51
execute if entity @e[tag=this_entity,limit=1,scores={Health=5}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 52
execute if entity @e[tag=this_entity,limit=1,scores={Health=6}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 53
execute if entity @e[tag=this_entity,limit=1,scores={Health=7}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 54
execute if entity @e[tag=this_entity,limit=1,scores={Health=8}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 55
execute if entity @e[tag=this_entity,limit=1,scores={Health=9}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 56
execute if entity @e[tag=this_entity,limit=1,scores={Health=10}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 57
execute if entity @e[tag=this_entity,limit=1,scores={Health=11}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 58
execute if entity @e[tag=this_entity,limit=1,scores={Health=12}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 59
execute if entity @e[tag=this_entity,limit=1,scores={Health=13}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 60
execute if entity @e[tag=this_entity,limit=1,scores={Health=14}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 61
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=1}] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=2}] EntitySizeRadius 10
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=3}] EntitySizeRadius 12
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=4}] EntitySizeRadius 13
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=5}] EntitySizeRadius 15
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=6}] EntitySizeRadius 17
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=7}] EntitySizeRadius 18
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=8}] EntitySizeRadius 20
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=9}] EntitySizeRadius 21
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=10}] EntitySizeRadius 26
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=11}] EntitySizeRadius 23
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=12}] EntitySizeRadius 24
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=13}] EntitySizeRadius 25
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=14}] EntitySizeRadius 27
scoreboard players set @e[tag=this_entity,limit=1,scores={Health=15..}] EntitySizeRadius 30
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
tag @e[tag=this_entity,limit=1] remove this_entity
tag @e[tag=this_model] remove this_model
data remove storage luigis_mansion:data entity