execute positioned ^ ^ ^ run particle minecraft:dust{color:16777215,scale:1f} ~ ~ ~ 0 0 0 0 1
execute positioned ^ ^0.5 ^ run particle minecraft:dust{color:16777215,scale:1f} ~ ~ ~ 0 0 0 0 1
execute positioned ^ ^-0.5 ^ run particle minecraft:dust{color:16777215,scale:1f} ~ ~ ~ 0 0 0 0 1
execute positioned ^0.5 ^ ^ run particle minecraft:dust{color:16777215,scale:1f} ~ ~ ~ 0 0 0 0 1
execute positioned ^-0.5 ^ ^ run particle minecraft:dust{color:16777215,scale:1f} ~ ~ ~ 0 0 0 0 1
scoreboard players add #temp Time 1
execute facing entity @s feet rotated ~ 0 as @e[tag=luigi,tag=!got_sucked,distance=..2,tag=same_room] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned as @s",teleport:"^ ^ ^0.3"}
tag @e[tag=luigi,distance=..2,tag=same_room] add got_sucked
execute if score #temp Time matches ..29 positioned ^ ^ ^0.5 run function luigis_mansion:entities/bowser/attack/vacuum/suck