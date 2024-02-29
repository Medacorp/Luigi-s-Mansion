$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/chauncey/ai/mansion/$(id)

execute if entity @s[tag=attack] run function luigis_mansion:entities/chauncey/attack/punch
execute if entity @s[tag=fake_attack] run function luigis_mansion:entities/chauncey/attack/fake_punch
execute if entity @s[tag=laugh,tag=!attack] run function luigis_mansion:entities/chauncey/laugh
execute if entity @s[tag=complain,tag=!attack] run function luigis_mansion:entities/chauncey/complain
execute if entity @s[tag=vanish] run function luigis_mansion:entities/chauncey/vanish