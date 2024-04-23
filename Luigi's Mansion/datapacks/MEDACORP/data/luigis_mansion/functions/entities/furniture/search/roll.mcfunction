tag @s add searched
tag @s add open
tag @s[tag=light_on_search] add lit
summon minecraft:marker ~ ~ ~ {Tags:["location","remove_from_existence"]}
execute store result entity @e[tag=location,limit=1] Pos[1] double 0.1 run scoreboard players get @s PositionY
execute at @e[tag=location] unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] at @s rotated ~ 0 unless entity @s[nbt={ArmorItems:[{components:{"minecraft:custom_data":{loot:{}}}}]}] if entity @s[tag=!no_dust] run function luigis_mansion:entities/furniture/spawn/dust
execute at @e[tag=location] unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] at @s rotated ~ 0 if entity @s[nbt={ArmorItems:[{components:{"minecraft:custom_data":{loot:{no_roll:1b}}}}]}] if entity @s[tag=!no_dust] run function luigis_mansion:entities/furniture/spawn/dust
execute at @e[tag=location] unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] at @s rotated ~ 0 if entity @s[nbt={ArmorItems:[{components:{"minecraft:custom_data":{loot:{}}}}]}] unless entity @s[nbt={ArmorItems:[{components:{loot:{no_roll:1b}}}]}] run function luigis_mansion:entities/furniture/spawn/contents
execute if data entity @s[tag=search] ArmorItems[3].components."minecraft:custom_data".search_command run function luigis_mansion:entities/furniture/search_command with entity @s ArmorItems[3].components."minecraft:custom_data"
execute at @e[tag=location] if entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] at @s rotated ~ 0 run function luigis_mansion:entities/furniture/spawn/boo
execute at @e[tag=location] if entity @e[distance=..0.1,tag=ghost,tag=hidden,tag=new_ghost,limit=1] at @s rotated ~ 0 run function luigis_mansion:entities/furniture/spawn/ghost
scoreboard players reset @s SearcherID
kill @e[tag=location]