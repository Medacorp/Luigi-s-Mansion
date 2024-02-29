$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/bogmire/ai/mansion/$(id)

execute if entity @s[tag=appear] run function luigis_mansion:entities/bogmire/appear
execute if entity @s[tag=vanish] run function luigis_mansion:entities/bogmire/vanish