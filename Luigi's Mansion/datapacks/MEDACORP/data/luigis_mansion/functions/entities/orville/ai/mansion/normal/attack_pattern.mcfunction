scoreboard players add @s WaitTime 1
execute unless entity @s[scores={WaitTime=120..159}] run scoreboard players set @s TargetTask 6
execute if entity @s[scores={WaitTime=120}] run playsound luigis_mansion:entity.henry.attack hostile @a[tag=same_room]
execute if entity @s[scores={WaitTime=140}] run playsound luigis_mansion:entity.henry.drop_bomb hostile @a[tag=same_room]
scoreboard players set @s[scores={WaitTime=120..159}] TargetTask 1
execute if entity @s[scores={WaitTime=140}] run function luigis_mansion:spawn_entities/bomb
scoreboard players set @s[scores={WaitTime=200}] WaitTime 40
execute rotated ~ 0 run particle minecraft:dust 1 0.39 0.39 0.5 ^0.7 ^0.3 ^0.5 0 0 0 0 1 normal @a[tag=same_room]
execute rotated ~ 0 run particle minecraft:dust 1 0.39 0.39 0.5 ^-0.7 ^0.3 ^0.5 0 0 0 0 1 normal @a[tag=same_room]