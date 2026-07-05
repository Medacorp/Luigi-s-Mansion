data modify entity @s Pos set from entity @s data.home
execute at @s run fill ^-1 ^0.5 ^ ^1 ^0.5 ^ minecraft:barrier replace minecraft:air
execute unless entity @s[distance=..0.2] run playsound luigis_mansion:furniture.weights.drop hostile @a[tag=same_room] ~ ~ ~ 1