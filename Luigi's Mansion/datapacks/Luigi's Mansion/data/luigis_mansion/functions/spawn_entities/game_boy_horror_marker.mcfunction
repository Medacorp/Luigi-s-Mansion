summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:0b,Invisible:1b,CustomName:'{"translate":"entity.minecraft.player"}',Tags:["game_boy_horror_marker","no_reflection","new"],CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:19,display:{color:37129}}}],DisabledSlots:2039583}
teleport @e[tag=game_boy_horror_marker,tag=new,limit=1] ~ ~ ~ ~ ~
scoreboard players operation #temp ID = @s ID
execute as @e[tag=game_boy_horror_marker,tag=!new] if score @s ID = #temp ID run kill @e[tag=game_boy_horror_marker,tag=new,limit=1]
scoreboard players operation @e[tag=game_boy_horror_marker,tag=new,limit=1] Room = @s Room
scoreboard players operation @e[tag=game_boy_horror_marker,tag=new,limit=1] ID = #temp ID
execute as @e[tag=head,tag=model_piece] if score #temp ID = @s ID run data modify entity @e[tag=game_boy_horror_marker,tag=new,limit=1] ArmorItems[3] set from entity @s ArmorItems[3]
scoreboard players reset #temp ID
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/get_player_name
execute in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{Text1:'{"entity":"@e[type=minecraft:item,nbt={Item:{id:\\"minecraft:player_head\\"}},limit=1]","nbt":"Item.tag.SkullOwner.Name"}'}
execute in minecraft:overworld run data modify entity @e[tag=game_boy_horror_marker,tag=new,limit=1] CustomName set from block 27 0 0 Text1
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
kill @e[distance=..0.1,type=minecraft:item,limit=1]
tag @e[tag=game_boy_horror_marker,tag=new,limit=1] remove new