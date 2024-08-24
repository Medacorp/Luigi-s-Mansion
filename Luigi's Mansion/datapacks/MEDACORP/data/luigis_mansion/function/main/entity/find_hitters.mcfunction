data modify storage luigis_mansion:data temp set from entity @s[type=minecraft:armor_stand] ArmorItems[3].components."minecraft:custom_data".hit_by
data modify storage luigis_mansion:data temp set from entity @s[type=minecraft:marker] data.hit_by
execute unless entity @s[tag=!in_vacuum,tag=!in_dust,tag=!in_fire,tag=!in_water,tag=!in_ice] as @a[tag=same_room] run function luigis_mansion:main/entity/find_hitters_player with entity @s
data remove storage luigis_mansion:data temp
execute unless data entity @s[type=minecraft:armor_stand] ArmorItems[3].count run data modify entity @s ArmorItems[3] set value {id:"minecraft:stone_button",count:1}
data modify entity @s[type=minecraft:armor_stand] ArmorItems[3].components."minecraft:custom_data".hit_by set value {vacuum:[],dust:[],fire:[],water:[],ice:[]}
data modify entity @s[type=minecraft:marker] data.hit_by set value {vacuum:[],dust:[],fire:[],water:[],ice:[]}
tag @s add hit_by_set