$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/floating_whirlindas_female/ai/mansion/$(id)

execute if entity @s[tag=vanish] run function luigis_mansion:entities/floating_whirlindas_female/vanish