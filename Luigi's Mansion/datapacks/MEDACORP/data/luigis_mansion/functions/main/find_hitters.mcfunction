data modify storage luigis_mansion:data temp set from entity @s[type=minecraft:armor_stand] ArmorItems[3].components."minecraft:custom_data".hit_by
data modify storage luigis_mansion:data temp set from entity @s[type=minecraft:marker] data.hit_by
execute if data storage luigis_mansion:data temp.vacuum[-1] run function luigis_mansion:main/find_hitters/vacuum
execute if data storage luigis_mansion:data temp.dust[-1] run function luigis_mansion:main/find_hitters/dust
execute if data storage luigis_mansion:data temp.fire[-1] run function luigis_mansion:main/find_hitters/fire
execute if data storage luigis_mansion:data temp.water[-1] run function luigis_mansion:main/find_hitters/water
execute if data storage luigis_mansion:data temp.ice[-1] run function luigis_mansion:main/find_hitters/ice
scoreboard players reset #temp ID
execute as @a unless entity @s[tag=!dusting_me,tag=!burning_me,tag=!watering_me,tag=!freezing_me] run tag @s add expelling_me
data remove storage luigis_mansion:data temp