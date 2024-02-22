$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/uncle_grimmly/ai/mansion/$(id)

execute if entity @s[tag=vanish] run function luigis_mansion:entities/uncle_grimmly/vanish with entity @s data.entity