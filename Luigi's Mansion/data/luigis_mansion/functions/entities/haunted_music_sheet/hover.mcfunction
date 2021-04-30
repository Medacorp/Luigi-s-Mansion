execute if block ~ ~4 ~ minecraft:air if block ~ ~2 ~ minecraft:air run teleport @s ~ ~0.3 ~
execute facing entity @p[gamemode=!spectator] feet positioned as @p[gamemode=!spectator] run summon minecraft:marker ^-6 ^ ^ {Tags:["target"]}
execute at @s if entity @p[gamemode=!spectator,distance=7..] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s if entity @p[gamemode=!spectator,distance=..7] facing entity @e[type=minecraft:marker,tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s run function luigis_mansion:entities/ghost/move
kill @e[type=minecraft:marker,tag=target]