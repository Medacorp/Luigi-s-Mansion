$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/sue_pea/ai/mansion/$(id)

execute if entity @s[tag=vanish] run function luigis_mansion:entities/sue_pea/vanish with entity @s data.entity