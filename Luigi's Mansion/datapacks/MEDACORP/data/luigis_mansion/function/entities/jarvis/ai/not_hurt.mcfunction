$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/jarvis/ai/mansion/$(id)

execute if entity @s[tag=pop_in,tag=!vanish] run function luigis_mansion:entities/jarvis/pop_in
execute if entity @s[tag=pop_out,tag=!vanish] run function luigis_mansion:entities/jarvis/pop_out
execute if entity @s[tag=frozen,tag=!vanish] run function luigis_mansion:entities/jarvis/frozen
execute if entity @s[tag=vanish] run function luigis_mansion:entities/jarvis/vanish