summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["source","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["head","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:18,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["chest","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:19,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["right_arm","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:18,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["left_arm","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:18,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["right_arm","held_item","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["left_arm","held_item","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["right_leg","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:19,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["left_leg","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:19,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["poltergust_body","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion:entity.luigi"}',ArmorItems:[{},{},{},{}]}
scoreboard players operation #temp ID = @s ID
execute at @s as @e[tag=luigi_model,tag=new] run scoreboard players operation @s ID = #temp ID
scoreboard players reset #temp ID
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/get_player_name
execute in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:['{"entity":"@e[type=minecraft:item,nbt={Item:{id:\\"minecraft:player_head\\"}},limit=1]","nbt":"Item.tag.SkullOwner.Name"}','{"text":""}','{"text":""}','{"text":""}']}}
execute in minecraft:overworld run data modify entity @e[tag=luigi_model,tag=source,tag=new,limit=1] CustomName set from block 27 0 0 front_text.messages[0]
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
kill @e[distance=..0.1,type=minecraft:item,limit=1]
execute if score #global_player_names Selected matches 0 run data merge entity @e[tag=luigi_model,tag=source,tag=new,limit=1] {CustomNameVisible:0b}
execute if score #global_player_names Selected matches 1 run data merge entity @e[tag=luigi_model,tag=source,tag=new,limit=1] {CustomNameVisible:1b}
function luigis_mansion:other/get_luigi_color
execute as @e[tag=luigi_model,tag=new] store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get #temp Time
execute if score #temp2 Time matches 1 as @e[tag=luigi_model,tag=new,nbt={ArmorItems:[{tag:{CustomModelData:18}}]}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 22
execute if score #temp2 Time matches 1 as @e[tag=luigi_model,tag=new,nbt={ArmorItems:[{tag:{CustomModelData:19}}]}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 23
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
tag @e[tag=luigi_model,tag=new] remove new