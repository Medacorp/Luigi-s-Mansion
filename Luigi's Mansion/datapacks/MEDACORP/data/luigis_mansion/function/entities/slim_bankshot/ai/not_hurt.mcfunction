$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/slim_bankshot/ai/mansion/$(id)

execute if entity @s[tag=vanish] run function luigis_mansion:entities/slim_bankshot/vanish