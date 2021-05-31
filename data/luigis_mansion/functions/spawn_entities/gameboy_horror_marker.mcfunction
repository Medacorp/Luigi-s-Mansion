summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"entity.minecraft.player"}',NoGravity:1b,CustomNameVisible:1b,Tags:["gameboy_horror_marker","new"],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}]}
teleport @e[tag=gameboy_horror_marker,tag=new,limit=1] ~ ~ ~ ~ ~
scoreboard players operation #temp ID = @s ID
execute as @e[tag=gameboy_horror_marker,tag=!new] if score @s ID = #temp ID run kill @e[tag=gameboy_horror_marker,tag=new,limit=1]
scoreboard players operation @e[tag=gameboy_horror_marker,tag=new,limit=1] ID = #temp ID
scoreboard players reset #temp ID
loot replace entity @e[tag=gameboy_horror_marker,tag=new,limit=1] armor.head 1 loot luigis_mansion:gameplay/get_player_name
setblock 27 0 0 minecraft:oak_sign{Text1:'{"italic":false,"color":"white","nbt":"ArmorItems[3].tag.SkullOwner.Name","entity":"@e[tag=gameboy_horror_marker,tag=new,limit=1]"}]}'}
data modify entity @e[tag=gameboy_horror_marker,tag=new,limit=1] CustomName set from block 27 0 0 Text1
setblock 27 0 0 minecraft:bedrock
tag @e[tag=gameboy_horror_marker,tag=new,limit=1] remove new