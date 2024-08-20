tag @s add in_dust
data modify entity @s[type=minecraft:armor_stand] ArmorItems[3].components."minecraft:custom_data".hit_by.dust append value 0
execute store result entity @s[type=minecraft:armor_stand] ArmorItems[3].components."minecraft:custom_data".hit_by.dust[-1] int 1 run scoreboard players get #temp ID
data modify entity @s[type=minecraft:marker] data.hit_by.dust append from entity @a[tag=me,limit=1] UUID