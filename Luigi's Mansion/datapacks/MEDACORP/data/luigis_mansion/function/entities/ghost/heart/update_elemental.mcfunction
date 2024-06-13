$execute positioned ~ ~-1.4 ~ run teleport @s ~ ~$(up) ~ ~ ~
execute at @s[tag=burning] run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0 1
execute at @s[tag=watery] run particle minecraft:rain ~ ~1 ~ 0.2 0.2 0.2 0 1
execute at @s[tag=frozen] run particle minecraft:firework ~ ~1 ~ 0.2 0.2 0.2 0 1
scoreboard players operation @s Room = #temp Room