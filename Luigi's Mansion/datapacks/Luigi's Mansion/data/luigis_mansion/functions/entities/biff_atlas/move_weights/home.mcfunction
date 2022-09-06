execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute at @s run fill ~ ~1.17 ~-1 ~ ~1.17 ~1 minecraft:barrier
execute unless entity @s[distance=..0.2] run playsound luigis_mansion:block.weights.drop hostile @a[tag=same_room] ~ ~ ~ 1