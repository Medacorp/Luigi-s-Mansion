execute positioned ~ ~1.25 ~ if entity @e[tag=ghost,distance=..1,scores={StunTime=0}] run tag @s add rock
execute positioned ~ ~1.85 ~ if entity @e[tag=portrait_ghost,distance=..1,scores={StunTime=0}] run tag @s add rock
execute if entity @s[tag=rock] run function luigis_mansion:animations/rocking_chair
tag @s remove rock