scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={SpawnTime=..-1}] ActionTime 20
execute if entity @s[scores={ActionTime=1}] run particle minecraft:dust 1 1 1 1.5 ~ ~1.2 ~ 0.5 0.5 0.5 1 30
execute if entity @s[scores={ActionTime=20},tag=trap] run function luigis_mansion:entities/hidden_boo/spawn/trap with entity @s data.boo
execute if entity @s[scores={ActionTime=20},tag=!trap] run function luigis_mansion:entities/hidden_boo/spawn/boo with entity @s data.boo
tag @s[scores={ActionTime=20}] add dead