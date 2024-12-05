data modify entity @s[scores={TargetTask=0,ActionTime=0,WaitTime=0}] data.target_pos set from entity @e[tag=target,limit=1] Pos
scoreboard players set @s[scores={TargetTask=0,ActionTime=0,WaitTime=0}] TargetTask 3
scoreboard players set @s[tag=reached_target] WaitTime 50
scoreboard players set @s[scores={WaitTime=1..}] TargetTask 0
scoreboard players remove @s[scores={WaitTime=1..}] WaitTime 1

scoreboard players add @s VacuumTime 0
execute if entity @s[tag=!maskless,tag=!appear,tag=!vanish] run function luigis_mansion:entities/ghost_guy/ai/lose_mask with entity @s data.entity

execute if entity @e[tag=exact_same_room,tag=luigi,distance=..0.7,limit=1] if entity @s[tag=!vanish,tag=!appear] run function luigis_mansion:entities/ghost_guy/collide with entity @s data.entity
execute if entity @s[tag=!collided,tag=!vanish,tag=!appear] run function luigis_mansion:entities/ghost_guy/try_attack

execute if entity @s[tag=!attack,tag=!collided,tag=!vanish,tag=!complain,tag=!appear] run function luigis_mansion:entities/ghost_guy/haunt
execute if entity @s[tag=!attack,tag=!collided,tag=complain] run function luigis_mansion:entities/ghost_guy/complain with entity @s data.entity
execute if entity @s[tag=vanish] run function luigis_mansion:entities/ghost_guy/vanish with entity @s data.entity
execute if entity @s[tag=appear] run function luigis_mansion:entities/ghost_guy/appear/normal with entity @s data.entity