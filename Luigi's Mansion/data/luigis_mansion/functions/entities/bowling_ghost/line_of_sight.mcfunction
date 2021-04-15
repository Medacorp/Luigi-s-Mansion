execute if entity @a[gamemode=!spectator,distance=..1,limit=1] run tag @s add attack
scoreboard players add #temp Steps 1
execute unless entity @a[gamemode=!spectator,distance=..1,limit=1] if score #temp Steps matches ..30 positioned ^ ^ ^1 if block ~ ~ ~ #luigis_mansion:ghosts_ignore run function luigis_mansion:entities/bowling_ghost/line_of_sight
execute unless entity @a[gamemode=!spectator,distance=..1,limit=1] if score #temp Steps matches ..30 positioned ^ ^ ^1 if block ~ ~ ~ #minecraft:slabs[type=bottom] run function luigis_mansion:entities/bowling_ghost/line_of_sight