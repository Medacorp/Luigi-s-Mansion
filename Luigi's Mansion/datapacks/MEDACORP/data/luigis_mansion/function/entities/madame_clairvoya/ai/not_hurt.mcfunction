$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/madame_clairvoya/ai/mansion/$(id)

execute if entity @s[tag=vanish] run function luigis_mansion:entities/madame_clairvoya/vanish