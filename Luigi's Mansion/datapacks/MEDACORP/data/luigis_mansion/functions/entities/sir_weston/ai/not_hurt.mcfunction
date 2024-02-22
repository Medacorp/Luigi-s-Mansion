$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/sir_weston/ai/mansion/$(id)

execute if entity @s[tag=vanish] run function luigis_mansion:entities/sir_weston/vanish with entity @s data.entity