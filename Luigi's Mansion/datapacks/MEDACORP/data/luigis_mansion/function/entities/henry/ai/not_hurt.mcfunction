$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/henry/ai/mansion/$(id)

execute if entity @s[tag=appear,tag=!vanish] run function luigis_mansion:entities/henry/appear
execute if entity @s[tag=laugh,tag=!vanish] run function luigis_mansion:entities/henry/laugh
execute if entity @s[tag=vanish] run function luigis_mansion:entities/henry/vanish