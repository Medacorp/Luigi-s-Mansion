execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] run function luigis_mansion:entities/green_flying_fish/collide

execute at @s facing entity @p[gamemode=!spectator] feet run teleport @s ~ ~ ~ ~ ~
execute at @s run function luigis_mansion:entities/ghost/move_ignore_barrier