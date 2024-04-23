tag @s add open
execute unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 unless entity @s[nbt={ArmorItems:[{components:{"minecraft:custom_data":{loot:{}}}}]}] if entity @s[tag=!no_dust] run function luigis_mansion:entities/furniture/spawn/dust
execute unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 if entity @s[nbt={ArmorItems:[{components:{"minecraft:custom_data":{loot:{}}}}]}] run function luigis_mansion:entities/furniture/spawn/contents
execute if data entity @s[tag=search] ArmorItems[3].components."minecraft:custom_data".search_command run function luigis_mansion:entities/furniture/search_command with entity @s ArmorItems[3].components."minecraft:custom_data"
execute positioned ~ ~1.4 ~ if entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 run function luigis_mansion:entities/furniture/spawn/boo
execute positioned ~ ~1.4 ~ if entity @e[distance=..0.1,tag=ghost,tag=hidden,tag=new_ghost,limit=1] rotated ~ 0 run function luigis_mansion:entities/furniture/spawn/ghost
execute if score @s[tag=searchable_by_water,tag=plant] FurnitureSearch = @s FurnitureWater run function 3ds_remake:selection_menu/gallery_trophy/complete/beginner/task_5
scoreboard players reset @s SearcherID