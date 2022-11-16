execute positioned ^ ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1
execute positioned ^ ^0.5 ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1
execute positioned ^ ^-0.5 ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1
execute positioned ^0.5 ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1
execute positioned ^-0.5 ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1
scoreboard players add #temp Time 1
execute as @e[distance=..2,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute facing entity @s feet rotated ~ 0 as @a[tag=!got_sucked,distance=..2,tag=!spectator] positioned as @s run teleport @s ^ ^ ^0.3
tag @a[distance=..2,tag=!spectator] add got_sucked
execute if score #temp Time matches ..29 positioned ^ ^ ^0.5 run function luigis_mansion:entities/bowser/suck