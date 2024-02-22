$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/mr_luggs/ai/mansion/$(id)

execute if entity @s[tag=vanish] run function luigis_mansion:entities/mr_luggs/vanish with entity @s data.entity