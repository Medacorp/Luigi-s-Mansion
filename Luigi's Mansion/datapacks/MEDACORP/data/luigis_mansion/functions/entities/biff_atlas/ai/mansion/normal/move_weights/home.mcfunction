data modify entity @s Pos set from entity @s ArmorItems[3].tag.luigis_mansion.home
execute at @s run fill ~ ~1.17 ~-1 ~ ~1.17 ~1 minecraft:barrier
execute unless entity @s[distance=..0.2] run playsound luigis_mansion:furniture.weights.drop hostile @a[tag=same_room] ~ ~ ~ 1