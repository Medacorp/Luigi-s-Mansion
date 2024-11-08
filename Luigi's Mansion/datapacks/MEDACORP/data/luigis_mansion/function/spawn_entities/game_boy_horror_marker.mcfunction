summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:0b,Invisible:1b,CustomName:'{"type":"translatable","translate":"entity.minecraft.player"}',Tags:["game_boy_horror_marker","no_reflection","same_room_players_only","new"],CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/luigi","minecraft:unbreakable":{},"minecraft:custom_model_data":{floats:[0f],strings:["default"]},"minecraft:dyed_color":{rgb:37129},"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"game_boy_horror_marker"}}}}],DisabledSlots:2039583}
teleport @e[tag=game_boy_horror_marker,tag=new,limit=1] ~ ~ ~ ~ ~
scoreboard players operation #temp ID = @s ID
execute as @e[tag=game_boy_horror_marker,tag=!new] if score @s ID = #temp ID run kill @e[tag=game_boy_horror_marker,tag=new,limit=1]
scoreboard players operation @e[tag=game_boy_horror_marker,tag=new,limit=1] LastFloor = @s LastFloor
scoreboard players operation @e[tag=game_boy_horror_marker,tag=new,limit=1] Room = @s Room
scoreboard players operation @e[tag=game_boy_horror_marker,tag=new,limit=1] ID = #temp ID
execute as @e[tag=head,tag=model_piece] if score #temp ID = @s ID run data modify entity @e[tag=game_boy_horror_marker,tag=new,limit=1] ArmorItems[3].components."minecraft:dyed_color".rgb set from entity @s ArmorItems[3].components."minecraft:dyed_color".rgb
execute as @e[tag=head,tag=model_piece] if score #temp ID = @s ID run data modify entity @e[tag=game_boy_horror_marker,tag=new,limit=1] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default
scoreboard players reset #temp ID
execute in minecraft:overworld run loot spawn 27 0 0 loot luigis_mansion:gameplay/get_player_name
execute in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:['{"source":"entity","entity":"@e[type=minecraft:item,nbt={Item:{id:\'minecraft:player_head\'}},limit=1]","type":"nbt","nbt":"Item.components.\'minecraft:profile\'.name"}','{"type":"text","text":""}','{"type":"text","text":""}','{"type":"text","text":""}']}}
execute in minecraft:overworld run data modify entity @e[tag=game_boy_horror_marker,tag=new,limit=1] CustomName set from block 27 0 0 front_text.messages[0]
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
execute in minecraft:overworld run kill @e[x=27.5,y=0.0,z=0.5,distance=..0.7,type=minecraft:item,limit=1]
tag @e[tag=game_boy_horror_marker,tag=new,limit=1] remove new