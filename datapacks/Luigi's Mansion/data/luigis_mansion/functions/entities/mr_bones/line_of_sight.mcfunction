execute if entity @a[gamemode=!spectator,distance=..1,limit=1] run tag @s add attack
scoreboard players add #temp Steps 1
execute unless entity @a[gamemode=!spectator,distance=..1,limit=1] if score #temp Steps matches ..30 positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air run function luigis_mansion:entities/mr_bones/line_of_sight