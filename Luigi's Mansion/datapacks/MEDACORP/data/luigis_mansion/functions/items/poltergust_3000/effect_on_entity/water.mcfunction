tag @s add in_water
data modify entity @s[type=minecraft:armor_stand] ArmorItems[3].tag.luigis_mansion.hit_by.water append value 0
execute store result entity @s[type=minecraft:armor_stand] ArmorItems[3].tag.luigis_mansion.hit_by.water[-1] int 1 run scoreboard players get #temp ID
data modify entity @s[type=minecraft:marker] data.hit_by.water append value 0
execute store result entity @s[type=minecraft:marker] data.hit_by.water[-1] int 1 run scoreboard players get #temp ID