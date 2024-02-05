summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:0b,Invisible:1b,CustomName:'{"type":"translatable","translate":"entity.minecraft.player"}',Tags:["game_boy_horror_marker","no_reflection","new"],CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:19,display:{color:37129},luigis_mansion:{entity:{namespace:"luigis_mansion",id:"game_boy_horror_marker"}}}}],DisabledSlots:2039583}
teleport @e[tag=game_boy_horror_marker,tag=new,limit=1] ~ ~ ~ ~ ~
scoreboard players operation #temp ID = @s ID
execute as @e[tag=game_boy_horror_marker,tag=!new] if score @s ID = #temp ID run kill @e[tag=game_boy_horror_marker,tag=new,limit=1]
scoreboard players operation @e[tag=game_boy_horror_marker,tag=new,limit=1] Room = @s Room
scoreboard players operation @e[tag=game_boy_horror_marker,tag=new,limit=1] ID = #temp ID
execute as @e[tag=head,tag=model_piece] if score #temp ID = @s ID run data modify entity @e[tag=game_boy_horror_marker,tag=new,limit=1] ArmorItems[3] set from entity @s ArmorItems[3]
scoreboard players reset #temp ID
execute in minecraft:overworld run loot spawn 27 0 0 loot luigis_mansion:gameplay/get_player_name
execute in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:['{"source":"entity","entity":"@e[type=minecraft:item,nbt={Item:{id:\\"minecraft:player_head\\"}},limit=1]","type":"nbt","nbt":"Item.tag.SkullOwner.Name"}','{"type":"text","text":""}','{"type":"text","text":""}','{"type":"text","text":""}']}}
execute in minecraft:overworld run data modify entity @e[tag=game_boy_horror_marker,tag=new,limit=1] CustomName set from block 27 0 0 front_text.messages[0]
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
execute in minecraft:overworld run kill @e[x=27.5,y=0.0,z=0.5,distance=..0.7,type=minecraft:item,limit=1]
tag @e[tag=game_boy_horror_marker,tag=new,limit=1] remove new