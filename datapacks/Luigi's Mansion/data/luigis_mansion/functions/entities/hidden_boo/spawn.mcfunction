scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run particle minecraft:dust 1 1 1 1.5 ~ ~1.2 ~ 0.5 0.5 0.5 1 30
execute if entity @s[scores={ActionTime=20}] run function #luigis_mansion:entities/hidden_boo/spawn