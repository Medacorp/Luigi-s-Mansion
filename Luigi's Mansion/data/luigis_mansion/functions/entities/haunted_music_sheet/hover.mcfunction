execute if block ~ ~4 ~ minecraft:air if block ~ ~2 ~ minecraft:air run teleport @s ~ ~0.3 ~
execute facing entity @p[gamemode=!spectator] feet positioned as @p[gamemode=!spectator] run summon minecraft:area_effect_cloud ^-6 ^ ^ {Tags:["target"]}
execute at @s if entity @p[gamemode=!spectator,distance=7..] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s if entity @p[gamemode=!spectator,distance=..7] facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s run function luigis_mansion:entities/ghost/move
kill @e[tag=target]