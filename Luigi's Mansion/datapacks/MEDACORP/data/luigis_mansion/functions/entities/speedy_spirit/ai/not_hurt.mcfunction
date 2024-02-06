scoreboard players set @s[scores={TargetTask=0,ActionTime=0,AttackType=0}] TargetTask 2
scoreboard players set @s[scores={TargetTask=0,ActionTime=0,AttackType=1}] TargetTask 1

execute if entity @s[tag=!collided,tag=!vanish,tag=!appear,scores={AttackType=1}] run function luigis_mansion:entities/speedy_spirit/try_attack

execute if entity @s[tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear] run function luigis_mansion:entities/speedy_spirit/haunt
execute if entity @s[tag=!attack,tag=!collided,tag=laugh] run function luigis_mansion:entities/gold_ghost/laugh with entity @s data.entity
execute if entity @s[tag=!attack,tag=!collided,tag=complain] run function luigis_mansion:entities/gold_ghost/complain with entity @s data.entity
execute if entity @s[tag=collided] run function luigis_mansion:entities/gold_ghost/collided
execute if entity @s[tag=vanish] run function luigis_mansion:entities/gold_ghost/vanish with entity @s data.entity
execute if entity @s[tag=appear,tag=!beta_appear] run function luigis_mansion:entities/gold_ghost/appear/normal with entity @s data.entity
execute if entity @s[tag=appear,tag=beta_appear] run function luigis_mansion:entities/gold_ghost/appear/beta with entity @s data.entity