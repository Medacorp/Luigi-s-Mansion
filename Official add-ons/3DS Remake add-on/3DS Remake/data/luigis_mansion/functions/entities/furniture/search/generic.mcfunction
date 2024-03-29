tag @s add open
execute unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 unless entity @s[nbt={ArmorItems:[{tag:{loot:{}}}]}] if entity @s[tag=!no_dust] run function luigis_mansion:entities/furniture/spawn/dust
execute unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 if entity @s[nbt={ArmorItems:[{tag:{loot:{}}}]}] run function luigis_mansion:entities/furniture/spawn/contents
execute if data entity @s[tag=search] ArmorItems[3].tag.luigis_mansion.search_command run function luigis_mansion:entities/furniture/search_command with entity @s ArmorItems[3].tag.luigis_mansion
execute positioned ~ ~1.4 ~ if entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 run function luigis_mansion:entities/furniture/spawn/boo
execute positioned ~ ~1.4 ~ if entity @e[distance=..0.1,tag=ghost,tag=hidden,tag=new_ghost,limit=1] rotated ~ 0 run function luigis_mansion:entities/furniture/spawn/ghost
execute if score @s[tag=searchable_by_water,tag=plant] FurnitureSearch = @s FurnitureWater run function 3ds_remake:room/gallery/clear_task/beginner/task_5
scoreboard players reset @s SearcherID