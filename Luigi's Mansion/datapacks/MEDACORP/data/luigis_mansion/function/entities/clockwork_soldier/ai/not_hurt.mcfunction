$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/clockwork_soldier/ai/mansion/$(id)

execute if entity @s[tag=attack,tag=!vanish] run function luigis_mansion:entities/clockwork_soldier/attack/shoot
execute if entity @s[tag=complain,tag=!vanish] run function luigis_mansion:entities/clockwork_soldier/complain
execute if entity @s[tag=vanish] run function luigis_mansion:entities/clockwork_soldier/vanish