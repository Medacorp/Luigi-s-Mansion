execute store result score #temp ID run scoreboard players get @s SearcherID
execute as @a[tag=!spectator] if score @s ID = #temp ID run tag @s add searcher
execute if entity @a[tag=searcher] unless entity @a[tag=searcher,scores={GBHCall=1..}] unless entity @a[tag=searcher,scores={Dialog=1..}] run function #luigis_mansion:entities/furniture/trigger_dialog
tag @e[tag=searcher,limit=1] remove searcher
scoreboard players reset #temp ID