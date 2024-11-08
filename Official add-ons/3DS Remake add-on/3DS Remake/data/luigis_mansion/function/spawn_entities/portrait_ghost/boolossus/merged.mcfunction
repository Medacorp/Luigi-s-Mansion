summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boolossus"}',Tags:["affected_by_vacuum","affected_by_vacuum","ghost","merged","portrait_ghost","visible","vacuumable","same_room_players_only","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boolossus"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:entity/boolossus","minecraft:unbreakable":{},"minecraft:custom_model_data":{flags:[B;0b],floats:[0f],strings:["15"]}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","boo_model","found_owner","head","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boolossus"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:entity/boolossus","minecraft:unbreakable":{},"minecraft:custom_model_data":{flags:[B;0b],floats:[1f],strings:["15"]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{floats:[2f]}}}}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","boo_model","found_owner","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boolossus"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:entity/boolossus","minecraft:unbreakable":{},"minecraft:custom_model_data":{flags:[B;0b],floats:[2f],strings:["15"]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{floats:[1f]}}}}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","boo_model","found_owner","left_arm","this_entity"],DisabledSlots:2039583}
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
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s ActionTime = @s Health
execute if entity @e[tag=this_entity,limit=1,scores={ActionTime=1}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".strings[0] set value "1"
execute if entity @e[tag=this_entity,limit=1,scores={ActionTime=2}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".strings[0] set value "2"
execute if entity @e[tag=this_entity,limit=1,scores={ActionTime=3}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".strings[0] set value "3"
execute if entity @e[tag=this_entity,limit=1,scores={ActionTime=4}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".strings[0] set value "4"
execute if entity @e[tag=this_entity,limit=1,scores={ActionTime=5}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".strings[0] set value "5"
execute if entity @e[tag=this_entity,limit=1,scores={ActionTime=6}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".strings[0] set value "6"
execute if entity @e[tag=this_entity,limit=1,scores={ActionTime=7}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".strings[0] set value "7"
execute if entity @e[tag=this_entity,limit=1,scores={ActionTime=8}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".strings[0] set value "8"
execute if entity @e[tag=this_entity,limit=1,scores={ActionTime=9}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".strings[0] set value "9"
execute if entity @e[tag=this_entity,limit=1,scores={ActionTime=10}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".strings[0] set value "10"
execute if entity @e[tag=this_entity,limit=1,scores={ActionTime=11}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".strings[0] set value "11"
execute if entity @e[tag=this_entity,limit=1,scores={ActionTime=12}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".strings[0] set value "12"
execute if entity @e[tag=this_entity,limit=1,scores={ActionTime=13}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".strings[0] set value "13"
execute if entity @e[tag=this_entity,limit=1,scores={ActionTime=14}] as @e[tag=this_model] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".strings[0] set value "14"
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=1}] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=2}] EntitySizeRadius 10
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=3}] EntitySizeRadius 11
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=4}] EntitySizeRadius 12
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=5}] EntitySizeRadius 13
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=6}] EntitySizeRadius 14
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=7}] EntitySizeRadius 15
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=8}] EntitySizeRadius 16
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=9}] EntitySizeRadius 17
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=10}] EntitySizeRadius 18
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=11}] EntitySizeRadius 19
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=12}] EntitySizeRadius 20
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=13}] EntitySizeRadius 21
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=14}] EntitySizeRadius 22
scoreboard players set @e[tag=this_entity,limit=1,scores={ActionTime=15..}] EntitySizeRadius 23
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
tag @e[tag=this_entity,limit=1] remove this_entity
tag @e[tag=this_model] remove this_model
data remove storage luigis_mansion:data entity