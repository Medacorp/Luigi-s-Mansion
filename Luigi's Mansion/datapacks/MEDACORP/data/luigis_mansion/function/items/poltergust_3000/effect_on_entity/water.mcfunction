tag @s add in_water
data modify entity @s[type=minecraft:armor_stand] ArmorItems[3].components."minecraft:custom_data".hit_by.water append from entity @a[tag=me,limit=1] UUID
data modify entity @s[type=minecraft:marker] data.hit_by.water append from entity @a[tag=me,limit=1] UUID