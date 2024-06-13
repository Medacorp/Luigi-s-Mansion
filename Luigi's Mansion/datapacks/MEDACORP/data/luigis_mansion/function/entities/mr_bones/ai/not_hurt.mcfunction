scoreboard players add @s WaitTime 1
scoreboard players set @s[scores={TargetTask=0}] WaitTime 0
scoreboard players set @s[scores={TargetTask=0,ActionTime=0}] TargetTask 4

execute if entity @e[tag=exact_same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!vanish,tag=!appear] run function luigis_mansion:entities/mr_bones/collide with entity @s data.entity
execute if entity @s[tag=!collided,tag=!vanish,tag=!appear] run function luigis_mansion:entities/mr_bones/try_attack

execute if entity @s[tag=!attack,tag=!collided,tag=!vanish,tag=!appear,tag=!laugh,tag=!complain] run function luigis_mansion:entities/mr_bones/haunt
execute if entity @s[tag=!attack,tag=!collided,tag=laugh] run function luigis_mansion:entities/mr_bones/laugh with entity @s data.entity
execute if entity @s[tag=!attack,tag=!collided,tag=complain] run function luigis_mansion:entities/mr_bones/complain with entity @s data.entity
execute if entity @s[tag=collided] run function luigis_mansion:entities/mr_bones/collided with entity @s data.entity
execute if entity @s[tag=vanish] run function luigis_mansion:entities/mr_bones/vanish with entity @s data.entity
execute if entity @s[tag=appear] run function luigis_mansion:entities/mr_bones/appear/normal with entity @s data.entity