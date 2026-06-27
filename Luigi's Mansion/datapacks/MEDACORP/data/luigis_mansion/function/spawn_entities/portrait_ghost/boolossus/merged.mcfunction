summon minecraft:marker ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.boolossus"},Tags:["affected_by_vacuum","affected_by_vacuum","ghost","merged","portrait_ghost","visible","vacuumable","same_room_players_only","no_remove_on_non_ticking","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}}
summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.boolossus"},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/boolossus","minecraft:custom_model_data":{flags:[0b],floats:[0f],strings:["default"]}}},item_display:"head",Tags:["model_piece","boo_model","found_owner","head","this_entity","this_model"],brightness:{block:15,sky:15}}
summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.boolossus"},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/boolossus","minecraft:custom_model_data":{flags:[0b],floats:[1f],strings:["default"]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{floats:[2f]}}}}}},item_display:"head",Tags:["model_piece","boo_model","found_owner","right_arm","this_entity","this_model"],brightness:{block:15,sky:15}}
summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.boolossus"},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/boolossus","minecraft:custom_model_data":{flags:[0b],floats:[2f],strings:["default"]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{floats:[1f]}}}}}},item_display:"head",Tags:["model_piece","boo_model","found_owner","left_arm","this_entity","this_model"],brightness:{block:15,sky:15}}
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] Wave 0
scoreboard players set @e[tag=this_entity,limit=1] Dialog 0
scoreboard players set @e[tag=this_entity,limit=1] VanishTime -1
execute as @e[tag=this_entity,limit=1] store result score @s Health run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts[{name:{namespace:"luigis_mansion",id:"boolossus"}}].health
execute as @e[tag=this_entity,limit=1] store result score @s MaxHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts[{name:{namespace:"luigis_mansion",id:"boolossus"}}].max_health
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts[{name:{namespace:"luigis_mansion",id:"boolossus"}}].merged_speed
data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data current_state.current_data.portrait_ghosts[{name:{namespace:"luigis_mansion",id:"boolossus"}}].damage
function luigis_mansion:spawn_entities/setup/default
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