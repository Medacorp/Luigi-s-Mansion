summon minecraft:marker ~ ~ ~ {Tags:["wait_location","dead"]}
execute store result entity @e[tag=wait_location,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=wait_location,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=wait_location,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute positioned as @e[tag=wait_location,limit=1] run teleport @s[gamemode=!spectator] ~ ~ ~
kill @e[tag=wait_location,limit=1]