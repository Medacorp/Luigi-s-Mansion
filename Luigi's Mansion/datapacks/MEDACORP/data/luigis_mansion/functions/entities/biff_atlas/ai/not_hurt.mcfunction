$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/biff_atlas/ai/mansion/$(id)

execute if entity @s[tag=vanish] run function luigis_mansion:entities/biff_atlas/vanish with entity @s data.entity