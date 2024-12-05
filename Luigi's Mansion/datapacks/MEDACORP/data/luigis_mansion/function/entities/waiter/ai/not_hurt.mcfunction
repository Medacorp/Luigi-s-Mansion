tag @s[tag=reached_target] add disappear
execute unless data entity @s data.path.steps[0] if entity @s[scores={TargetTask=0,ActionTime=0}] run function luigis_mansion:entities/ghost/set_random_path
execute if data entity @s data.path.steps[0] run scoreboard players set @s[scores={TargetTask=0,ActionTime=0}] TargetTask 5

execute if entity @e[tag=exact_same_room,tag=luigi,distance=..0.7,limit=1] if entity @s[tag=!vanish] run function luigis_mansion:entities/waiter/collide with entity @s data.entity
execute if entity @s[tag=!collided,tag=!vanish] run function luigis_mansion:entities/waiter/try_attack

execute if entity @s[tag=!attack,tag=!collided,tag=!vanish,tag=!complain] run function luigis_mansion:entities/waiter/haunt
execute if entity @s[tag=!attack,tag=!collided,tag=complain] run function luigis_mansion:entities/waiter/complain with entity @s data.entity
execute if entity @s[tag=collided] run function luigis_mansion:entities/waiter/collided with entity @s data.entity
execute if entity @s[tag=vanish] run function luigis_mansion:entities/waiter/vanish with entity @s data.entity