execute facing entity @p[gamemode=!spectator] feet positioned as @p[gamemode=!spectator] run summon minecraft:area_effect_cloud ^-6 ^ ^ {Tags:["target"]}
execute at @s if entity @p[gamemode=!spectator,distance=7..] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s if entity @p[gamemode=!spectator,distance=..7] facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s run function luigis_mansion:entities/ghost/move_ignore_barrier
kill @e[tag=target]
execute if block ~ ~-4 ~ #luigis_mansion:ghosts_ignore if block ~ ~-3 ~ #luigis_mansion:ghosts_ignore if block ~ ~-2 ~ #luigis_mansion:ghosts_ignore if block ~ ~-1 ~ #luigis_mansion:ghosts_ignore run tag @s add at_height
execute unless block ~ ~1 ~ #luigis_mansion:ghosts_ignore run tag @s add at_height
execute unless block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-1 ~
execute at @s run teleport @s[tag=!at_height] ~ ~0.3 ~ ~ -45