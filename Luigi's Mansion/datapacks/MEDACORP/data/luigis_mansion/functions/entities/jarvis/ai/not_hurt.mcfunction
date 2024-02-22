$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/jarvis/ai/mansion/$(id)

execute if entity @s[tag=vanish] run function luigis_mansion:entities/jarvis/vanish with entity @s data.entity