scoreboard players operation #temp ID = @s ID
execute as @e[tag=model_piece] if score @s ID = #temp ID run tag @s add me
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["source","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:18,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["chest","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:19,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:18,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:18,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","held_item","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","held_item","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_leg","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:19,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_leg","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:19,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["poltergust_body","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}',ArmorItems:[{},{},{},{}]}
execute at @s as @e[tag=luigi_model,tag=new] run scoreboard players operation @s ID = #temp ID
execute in minecraft:overworld run loot spawn 27 0 0 loot luigis_mansion:gameplay/get_player_name
execute in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:['{"entity":"@e[type=minecraft:item,nbt={Item:{id:\\"minecraft:player_head\\"}},limit=1]","nbt":"Item.tag.SkullOwner.Name"}','{"text":""}','{"text":""}','{"text":""}']}}
execute in minecraft:overworld run data modify entity @e[tag=luigi_model,tag=source,tag=new,limit=1] CustomName set from block 27 0 0 front_text.messages[0]
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
execute in minecraft:overworld run kill @e[x=27.5,y=0.0,z=0.5,distance=..0.7,type=minecraft:item,limit=1]
execute if score #global_player_names Selected matches 0 run data merge entity @e[tag=luigi_model,tag=source,tag=new,limit=1] {CustomNameVisible:0b}
execute if score #global_player_names Selected matches 1 run data merge entity @e[tag=luigi_model,tag=source,tag=new,limit=1] {CustomNameVisible:1b}
execute as @e[tag=luigi_model,tag=new] run data modify entity @s ArmorItems[3].tag.display.color set from entity @e[tag=me,tag=!source,limit=1] ArmorItems[3].tag.display.color
execute as @e[tag=luigi_model,tag=new,nbt={ArmorItems:[{tag:{CustomModelData:18}}]}] run data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @e[tag=me,tag=right_arm,tag=!held_item,limit=1] ArmorItems[3].tag.CustomModelData
execute as @e[tag=luigi_model,tag=new,nbt={ArmorItems:[{tag:{CustomModelData:19}}]}] run data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @e[tag=me,tag=chest,limit=1] ArmorItems[3].tag.CustomModelData
tag @e[tag=luigi_model,tag=new] remove new
tag @e[tag=luigi_model,tag=me] add dead
tag @e[tag=luigi_model,tag=me] remove me
scoreboard players reset #temp ID