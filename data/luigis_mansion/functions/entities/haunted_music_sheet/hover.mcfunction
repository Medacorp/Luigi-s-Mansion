execute if block ~ ~4 ~ minecraft:air if block ~ ~2 ~ minecraft:air run teleport @s ~ ~0.3 ~
execute positioned as @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] run summon minecraft:marker ^-6 ^ ^ {Tags:["target"]}
execute at @s unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s if entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] facing entity @e[type=minecraft:marker,tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s run function luigis_mansion:entities/ghost/move
kill @e[type=minecraft:marker,tag=target]