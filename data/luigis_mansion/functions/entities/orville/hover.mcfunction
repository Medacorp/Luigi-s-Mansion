execute if block ~ ~-4 ~ #luigis_mansion:ghosts_ignore if block ~ ~-3 ~ #luigis_mansion:ghosts_ignore if block ~ ~-2 ~ #luigis_mansion:ghosts_ignore if block ~ ~-1 ~ #luigis_mansion:ghosts_ignore run tag @s add at_height
execute unless block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-1 ~
execute unless block ~ ~1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-2 ~
execute at @s unless block ~ ~2 ~ #luigis_mansion:ghosts_ignore run tag @s add at_height
execute at @s run teleport @s[tag=!at_height] ~ ~0.3 ~
execute positioned as @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] run summon minecraft:marker ^-6 ^ ^ {Tags:["target"]}
execute at @s unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s if entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] facing entity @e[type=minecraft:marker,tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s run function luigis_mansion:entities/ghost/move
kill @e[type=minecraft:marker,tag=target]