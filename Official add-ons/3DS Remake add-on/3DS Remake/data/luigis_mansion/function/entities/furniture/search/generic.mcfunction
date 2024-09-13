execute store result score #temp ID run scoreboard players get @s SearcherID
execute as @a[tag=!spectator] if score @s ID = #temp ID run tag @s add searcher
scoreboard players reset #temp ID
scoreboard players set @s FurnitureSpins 0
tag @s add open
tag @s[tag=light_on_search] add lit
summon minecraft:marker ~ ~1.4 ~ {Tags:["location","remove_from_existence"]}
execute store result entity @e[tag=location,limit=1] Pos[1] double 0.1 run scoreboard players get @s PositionY
execute if data entity @s ArmorItems[3].components."minecraft:custom_data".loot_chance run function luigis_mansion:entities/furniture/loot_chance with entity @s ArmorItems[3].components."minecraft:custom_data".loot_chance
execute at @e[tag=location] unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] at @s rotated ~ 0 unless entity @s[nbt={ArmorItems:[{components:{"minecraft:custom_data":{loot:{}}}}]}] if entity @s[tag=!no_dust] run function luigis_mansion:entities/furniture/spawn/dust
execute at @e[tag=location] unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] at @s rotated ~ 0 if entity @s[nbt={ArmorItems:[{components:{"minecraft:custom_data":{loot:{}}}}]}] run function luigis_mansion:entities/furniture/spawn/contents
execute if data entity @s[tag=search] ArmorItems[3].components."minecraft:custom_data".search_command run function luigis_mansion:entities/furniture/search_command with entity @s ArmorItems[3].components."minecraft:custom_data"
execute at @e[tag=location] if entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] at @s rotated ~ 0 run function luigis_mansion:entities/furniture/spawn/boo
execute at @e[tag=location] if entity @e[distance=..0.1,tag=ghost,tag=hiding_in_furniture,limit=1] at @s rotated ~ 0 run function luigis_mansion:entities/furniture/spawn/ghost
execute if entity @s[tag=grants_water_plant_task] if score @s[tag=!searched] FurnitureWater >= @s FurnitureSearch run function 3ds_remake:selection_menu/gallery_trophy/complete/beginner/task_5
scoreboard players reset @s SearcherID
kill @e[tag=location]
tag @s add searched
tag @e[tag=searcher,limit=1] remove searcher