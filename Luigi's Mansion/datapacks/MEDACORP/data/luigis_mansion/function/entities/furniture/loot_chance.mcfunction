data modify storage luigis_mansion:data furniture.loot set from entity @s ArmorItems[3].components."minecraft:custom_data".loot
$function $(namespace):entities/furniture/loot_chance/$(id)
data remove entity @s ArmorItems[3].components."minecraft:custom_data".loot
data modify entity @s ArmorItems[3].components."minecraft:custom_data".loot set from storage luigis_mansion:data furniture.loot
data remove entity @s ArmorItems[3].components."minecraft:custom_data".loot_chance
data remove storage luigis_mansion:data furniture.loot