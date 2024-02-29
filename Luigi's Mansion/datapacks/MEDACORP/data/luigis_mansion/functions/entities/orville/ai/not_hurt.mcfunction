$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/orville/ai/mansion/$(id)

execute if entity @s[tag=appear] run function luigis_mansion:entities/orville/appear
execute if entity @s[tag=laugh] run function luigis_mansion:entities/orville/laugh
execute if entity @s[tag=vanish] run function luigis_mansion:entities/orville/vanish