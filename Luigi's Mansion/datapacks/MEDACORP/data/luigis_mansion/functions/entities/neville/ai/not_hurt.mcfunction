$execute if entity @s[scores={StunTime=0},tag=!vanish] run function $(namespace):entities/neville/ai/mansion/$(id)

execute if entity @e[tag=exact_same_room,tag=!spectator,tag=player,distance=..1.6,limit=1] if entity @s[tag=!vanish,tag=!appear] run function luigis_mansion:entities/neville/collide

execute if entity @s[tag=vanish] run function luigis_mansion:entities/neville/vanish with entity @s data.entity