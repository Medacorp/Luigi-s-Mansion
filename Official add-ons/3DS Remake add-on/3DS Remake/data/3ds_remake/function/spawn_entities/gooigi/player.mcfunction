scoreboard players operation #temp ID = @s ID
execute as @e[tag=luigi] if score @s ID = #temp ID run scoreboard players set #temp Time 1
execute unless score #temp Time matches 1 run summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"3ds_remake:entity.gooigi"}',Tags:["luigi","player","gooigi","spawn_animation","no_dialog_freeze","same_room_select_furniture","cannot_be_removed","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"luigi"},head_rotation:0f}}
execute if entity @s[tag=separated_camera] store result entity @e[tag=this_entity,limit=1] Pos[0] double 0.01 run scoreboard players get @s ModelPositionX
execute if entity @s[tag=separated_camera] store result entity @e[tag=this_entity,limit=1] Pos[1] double 0.01 run scoreboard players get @s ModelPositionY
execute if entity @s[tag=separated_camera] store result entity @e[tag=this_entity,limit=1] Pos[2] double 0.01 run scoreboard players get @s ModelPositionZ
execute if entity @s[tag=separated_camera] store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run scoreboard players get @s ModelRotationX
execute if entity @s[tag=separated_camera] store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run scoreboard players get @s ModelRotationY
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["source","gooigi_model","this_entity","model_piece","found_owner"],CustomName:'{"type":"translatable","translate":"3ds_remake:entity.gooigi"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","gooigi_model","model_piece","this_entity","found_owner"],CustomName:'{"type":"translatable","translate":"3ds_remake:entity.gooigi"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:entity/gooigi","minecraft:unbreakable":{},"minecraft:custom_model_data":{flags:[B;0b],floats:[0f]}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","gooigi_model","this_entity","model_piece","found_owner"],CustomName:'{"type":"translatable","translate":"3ds_remake:entity.gooigi"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:entity/gooigi","minecraft:unbreakable":{},"minecraft:custom_model_data":{flags:[B;0b],floats:[1f]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{floats:[2f]}}}}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","held_item","gooigi_model","this_entity","model_piece","found_owner"],CustomName:'{"type":"translatable","translate":"3ds_remake:entity.gooigi"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","gooigi_model","this_entity","model_piece","found_owner"],CustomName:'{"type":"translatable","translate":"3ds_remake:entity.gooigi"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:entity/gooigi","minecraft:unbreakable":{},"minecraft:custom_model_data":{flags:[B;0b],floats:[2f]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{floats:[1f]}}}}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","held_item","gooigi_model","this_entity","model_piece","found_owner"],CustomName:'{"type":"translatable","translate":"3ds_remake:entity.gooigi"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["chest","gooigi_model","this_entity","model_piece","found_owner"],CustomName:'{"type":"translatable","translate":"3ds_remake:entity.gooigi"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:entity/gooigi","minecraft:unbreakable":{},"minecraft:custom_model_data":{flags:[B;0b],floats:[3f]}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_leg","gooigi_model","this_entity","model_piece","found_owner"],CustomName:'{"type":"translatable","translate":"3ds_remake:entity.gooigi"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:entity/gooigi","minecraft:unbreakable":{},"minecraft:custom_model_data":{flags:[B;0b],floats:[4f]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{floats:[5f]}}}}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_leg","gooigi_model","this_entity","model_piece","found_owner"],CustomName:'{"type":"translatable","translate":"3ds_remake:entity.gooigi"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:entity/gooigi","minecraft:unbreakable":{},"minecraft:custom_model_data":{flags:[B;0b],floats:[5f]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{floats:[4f]}}}}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["poltergust_body","gooigi_model","model_piece","this_entity","found_owner"],CustomName:'{"type":"translatable","translate":"3ds_remake:entity.gooigi"}'}
scoreboard players operation @e[tag=this_entity] ID = #temp ID
scoreboard players reset #temp ID
execute in minecraft:overworld run loot spawn 27 0 0 loot luigis_mansion:gameplay/get_player_name
execute in minecraft:overworld run data modify entity @e[tag=!model_piece,tag=this_entity,limit=1] data.player_name set from entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head"}},limit=1] Item.components."minecraft:profile".name
execute in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:['{"source":"entity","entity":"@e[type=minecraft:item,nbt={Item:{id:\'minecraft:player_head\'}},limit=1]","type":"nbt","nbt":"Item.components.\'minecraft:profile\'.name"}','{"type":"text","text":""}','{"type":"text","text":""}','{"type":"text","text":""}']}}
execute in minecraft:overworld run data modify entity @e[tag=!model_piece,tag=this_entity,limit=1] data.full_player_name set from block 27 0 0 front_text.messages[0]
execute in minecraft:overworld run data modify entity @e[tag=model_piece,tag=source,tag=this_entity,limit=1] CustomName set from block 27 0 0 front_text.messages[0]
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
execute in minecraft:overworld run kill @e[x=27.5,y=0.0,z=0.5,distance=..0.7,type=minecraft:item,limit=1]
execute if score #global_player_names Selected matches 0 run data merge entity @e[tag=model_piece,tag=source,tag=this_entity,limit=1] {CustomNameVisible:0b}
execute if score #global_player_names Selected matches 1 run data merge entity @e[tag=model_piece,tag=source,tag=this_entity,limit=1] {CustomNameVisible:1b}
tag @e[tag=model_piece,tag=this_entity] remove this_entity
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] PoltergustSound 0
execute if entity @s[tag=flipped_gravity] run tag @e[tag=this_entity,limit=1] add flipped_gravity
execute if entity @s[tag=flashlight] run tag @e[tag=this_entity,limit=1] add flashlight
scoreboard players operation @e[tag=this_entity,limit=1] AnimationProgress = @s AnimationProgress
scoreboard players operation @e[tag=this_entity,limit=1] ElementMeter = @s ElementMeter
scoreboard players operation @e[tag=this_entity,limit=1] LastRoom = @s LastRoom
scoreboard players operation @e[tag=this_entity,limit=1] Shrunk = @s Shrunk
scoreboard players operation @e[tag=this_entity,limit=1] Health = @s Health
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth = @s MaxHealth
execute if entity @e[tag=this_entity,limit=1] run data modify storage luigis_mansion:data entity set value {owner:0}
execute if entity @e[tag=this_entity,limit=1] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s ID
execute if entity @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_entities/setup/room
execute if entity @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_entities/setup/debug_spawn
data remove storage luigis_mansion:data entity
tag @e[tag=this_entity,limit=1] remove this_entity