data modify storage luigis_mansion:data temp set from entity @s data.hit_by
execute unless entity @s[tag=!in_vacuum,tag=!in_dust,tag=!in_fire,tag=!in_water,tag=!in_ice] as @e[tag=same_room,tag=player] run function luigis_mansion:main/entity/find_hitters_player with entity @s
data remove storage luigis_mansion:data temp
data modify entity @s data.hit_by set value {vacuum:[],dust:[],fire:[],water:[],ice:[]}
tag @s add hit_by_set