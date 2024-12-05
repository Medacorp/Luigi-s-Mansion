tag @s add in_fire
data modify entity @s[type=minecraft:armor_stand] ArmorItems[3].components."minecraft:custom_data".hit_by.fire append from entity @e[tag=me,limit=1] UUID
data modify entity @s[type=minecraft:marker] data.hit_by.fire append from entity @e[tag=me,limit=1] UUID