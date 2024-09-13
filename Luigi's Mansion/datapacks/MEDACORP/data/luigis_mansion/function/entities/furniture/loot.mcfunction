execute if entity @s[tag=searchable_by_time] run function luigis_mansion:entities/furniture/searchable_by_time
execute if entity @s[tag=search] run function luigis_mansion:entities/furniture/search
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/drop_loot
execute at @s[tag=no_dust,tag=no_loot,tag=no_search_command,scores={ActionTime=-1}] positioned ~ ~1.4 ~ unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] unless entity @e[distance=..0.1,tag=ghost,tag=hiding_in_furniture,limit=1] run tag @s add no_loot_tick