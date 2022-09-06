scoreboard players set @s Move 50
scoreboard players set @e[tag=target,limit=1] Move 50
execute positioned as @s run teleport @s ~ ~ ~ ~-180 ~
execute as @e[tag=target,limit=1] positioned as @s run teleport @s ~ ~ ~ ~ ~