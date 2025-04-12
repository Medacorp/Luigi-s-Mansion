$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/biff_atlas/ai/mansion/$(id)

execute at @s[tag=attack,tag=!laugh,tag=!vanish] run function luigis_mansion:entities/biff_atlas/attack/swing_arms
execute if entity @s[tag=laugh,tag=!vanish] run function luigis_mansion:entities/biff_atlas/laugh
execute if entity @s[tag=vanish] run function luigis_mansion:entities/biff_atlas/vanish