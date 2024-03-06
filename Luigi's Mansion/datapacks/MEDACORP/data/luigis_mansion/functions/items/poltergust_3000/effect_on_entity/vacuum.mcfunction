tag @s add in_vacuum
data modify entity @s[type=minecraft:armor_stand] ArmorItems[3].tag.luigis_mansion.hit_by.vacuum append value 0
execute store result entity @s[type=minecraft:armor_stand] ArmorItems[3].tag.luigis_mansion.hit_by.vacuum[-1] int 1 run scoreboard players get #temp ID
data modify entity @s[type=minecraft:marker] data.hit_by.vacuum append value 0
execute store result entity @s[type=minecraft:marker] data.hit_by.vacuum[-1] int 1 run scoreboard players get #temp ID