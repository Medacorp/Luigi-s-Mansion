execute if entity @s[distance=..1,limit=1] run scoreboard players set #temp Time 1
scoreboard players add #temp Steps 1
execute unless block ^ ^ ^1 #luigis_mansion:ghosts_ignore unless block ^ ^ ^1 #minecraft:slabs[type=bottom] run scoreboard players set #temp Steps 31
execute if entity @s[tag=!attack] if score #temp Steps matches ..30 if score #temp Time matches 0 positioned ^ ^ ^1 run function 3ds_remake:entities/boo/line_of_sight
scoreboard players reset #temp Steps