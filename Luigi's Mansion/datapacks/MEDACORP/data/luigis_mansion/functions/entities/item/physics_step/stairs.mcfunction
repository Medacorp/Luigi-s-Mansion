execute if block ~ ~-0.1 ~ #minecraft:stairs[facing=north] at @s run teleport @s ~ ~ ~ 0 ~
execute if block ~ ~-0.1 ~ #minecraft:stairs[facing=south] at @s run teleport @s ~ ~ ~ -180 ~
execute if block ~ ~-0.1 ~ #minecraft:stairs[facing=east] at @s run teleport @s ~ ~ ~ 90 ~
execute if block ~ ~-0.1 ~ #minecraft:stairs[facing=west] at @s run teleport @s ~ ~ ~ -90 ~
execute at @s[x_rotation=-90..-22] run teleport @s ~ ~ ~ ~ -22
execute at @s[x_rotation=22..90] run teleport @s ~ ~ ~ ~ 22
scoreboard players set @s Move 9