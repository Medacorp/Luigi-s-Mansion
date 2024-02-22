$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/miss_petunia/ai/mansion/$(id)

execute if entity @s[tag=vanish] run function luigis_mansion:entities/miss_petunia/vanish with entity @s data.entity