execute unless data entity @s data.path.steps[0] if entity @s[scores={TargetTask=0,ActionTime=0,WaitTime=1},tag=!stop_dancing] run function luigis_mansion:entities/ghost/set_random_path
execute if data entity @s data.path.steps[0] run scoreboard players set @s[scores={TargetTask=0,ActionTime=0,WaitTime=1},tag=!stop_dancing,tag=leader] TargetTask 5

data modify entity @s[scores={TargetTask=0,ActionTime=0,WaitTime=0},tag=stop_dancing] data.target_pos set from entity @e[tag=target,limit=1] Pos
scoreboard players set @s[scores={TargetTask=0,ActionTime=0,WaitTime=0},tag=stop_dancing] TargetTask 3
scoreboard players set @s[tag=reached_target,tag=stop_dancing] WaitTime 50
scoreboard players set @s[scores={WaitTime=1..},tag=stop_dancing] TargetTask 0
scoreboard players remove @s[scores={WaitTime=1..},tag=stop_dancing] WaitTime 1

execute if entity @s[tag=!attack,tag=!collided,tag=!vanish,tag=!complain,tag=!dodge,tag=!appear,tag=stop_dancing] run function luigis_mansion:entities/ghost_guy/haunt
execute if entity @s[tag=!attack,tag=!collided,tag=!vanish,tag=!complain,tag=!dodge,tag=!appear,tag=!stop_dancing,tag=!disappear] run function luigis_mansion:entities/dancing_ghost_guy/dance

scoreboard players add @s VacuumTime 0
execute if entity @s[tag=!maskless,tag=!appear,tag=!vanish] run function luigis_mansion:entities/dancing_ghost_guy/ai/lose_mask with entity @s data.entity

execute if entity @e[tag=exact_same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!vanish,tag=!appear] run function luigis_mansion:entities/dancing_ghost_guy/collide
execute if entity @s[tag=!collided,tag=!vanish,tag=!appear] run function luigis_mansion:entities/dancing_ghost_guy/try_attack
tag @s[tag=!stop_dancing] remove complain
execute if entity @s[tag=!attack,tag=!collided,tag=complain] run function luigis_mansion:entities/ghost_guy/complain with entity @s data.entity
execute if entity @s[tag=!attack,tag=!collided,tag=dodge] run function luigis_mansion:entities/dancing_ghost_guy/dodge
execute if entity @s[tag=vanish] run function luigis_mansion:entities/ghost_guy/vanish with entity @s data.entity
execute if entity @s[tag=appear] run function luigis_mansion:entities/ghost_guy/appear/normal with entity @s data.entity