scoreboard players set @s[scores={TargetTask=0,ActionTime=0}] TargetTask 1

execute if entity @e[tag=exact_same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!vanish,tag=!appear] unless entity @s[scores={AttackType=1}] run function luigis_mansion:entities/purple_puncher/collide with entity @s data.entity
execute if entity @s[tag=!collided,tag=!vanish,tag=!appear] run function luigis_mansion:entities/purple_puncher/try_attack

execute if entity @s[tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear] run function luigis_mansion:entities/purple_puncher/haunt
execute if entity @s[tag=!attack,tag=!collided,tag=laugh] run function luigis_mansion:entities/purple_puncher/laugh with entity @s data.entity
execute if entity @s[tag=!attack,tag=!collided,tag=complain] run function luigis_mansion:entities/purple_puncher/complain with entity @s data.entity
execute if entity @s[tag=collided] run function luigis_mansion:entities/purple_puncher/collided with entity @s data.entity
execute if entity @s[tag=vanish] run function luigis_mansion:entities/purple_puncher/vanish with entity @s data.entity
execute if entity @s[tag=appear,tag=!beta_appear] run function luigis_mansion:entities/purple_puncher/appear/normal with entity @s data.entity
execute if entity @s[tag=appear,tag=beta_appear] run function luigis_mansion:entities/purple_puncher/appear/beta with entity @s data.entity