scoreboard players set @s[scores={WaitTime=0}] Time 0
scoreboard players add @s WaitTime 1
scoreboard players set @s TargetTask 3
scoreboard players set @s[tag=reached_target,scores={WaitTime=40..60}] WaitTime 60
scoreboard players set @s[tag=reached_target,scores={WaitTime=80..100}] WaitTime 60
tag @s[scores={WaitTime=60}] add reached_target
scoreboard players set @s[scores={WaitTime=100}] WaitTime 40

execute if entity @s[tag=reached_target] run data modify entity @s data.target_pos set from entity @e[tag=target,sort=nearest,limit=1] Pos
data modify entity @s[tag=reached_target] data.target_pos[1] set from entity @s Pos[1]
execute at @s[scores={WaitTime=60..78}] run function luigis_mansion:entities/henry/ai/mansion/normal/drift
execute if entity @s[scores={WaitTime=60}] run playsound luigis_mansion:entity.henry.attack hostile @a[tag=same_room] ~ ~ ~ 1

scoreboard players add @s Time 1
scoreboard players set @s[scores={Time=60}] Time 0
execute if entity @s[scores={Time=1}] run playsound luigis_mansion:entity.henry.ambient_1 hostile @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={Time=31}] run playsound luigis_mansion:entity.henry.ambient_2 hostile @a[tag=same_room] ~ ~ ~ 0.5