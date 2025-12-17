execute store result score #temp ID run scoreboard players get @s SearcherID
execute as @e[tag=player] if score @s ID = #temp ID run tag @s add searcher
scoreboard players reset #temp ID
summon minecraft:marker ~ ~1.43875 ~ {Tags:["location","remove_from_existence"]}
execute store result entity @e[tag=location,limit=1] Pos[1] double 0.1 run scoreboard players get @s PositionY
execute at @e[tag=location] if entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] at @s[tag=!cloth_on_top] rotated ~ 0 run function luigis_mansion:entities/furniture/spawn/boo
scoreboard players reset @s SearcherID
execute if entity @s[tag=no_dust,tag=no_loot,tag=no_search_command,tag=!can_hide_boo,scores={ActionTime=-1}] at @e[tag=location] unless entity @e[distance=..0.1,tag=ghost,tag=hiding_in_furniture,limit=1] run tag @s add no_loot_tick
kill @e[tag=location]
tag @e[tag=searcher] remove searcher