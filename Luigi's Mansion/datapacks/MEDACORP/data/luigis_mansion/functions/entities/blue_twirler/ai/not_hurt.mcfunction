execute unless entity @s[scores={AttackType=2}] run scoreboard players set @s[scores={TargetTask=0,ActionTime=0}] TargetTask 1
scoreboard players set @s[scores={AttackType=2,TargetTask=0,ActionTime=0}] TargetTask 6

execute if entity @e[tag=exact_same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!vanish,tag=!appear,scores={AttackType=1}] run function luigis_mansion:entities/blue_twirler/collide with entity @s data.entity
execute if entity @s[tag=!collided,tag=!vanish,tag=!appear] run function luigis_mansion:entities/blue_twirler/try_attack

execute if entity @s[tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear] run function luigis_mansion:entities/blue_twirler/haunt
execute if entity @s[tag=!attack,tag=!collided,tag=laugh] run function luigis_mansion:entities/blue_twirler/laugh with entity @s data.entity
execute if entity @s[tag=!attack,tag=!collided,tag=complain] run function luigis_mansion:entities/blue_twirler/complain with entity @s data.entity
execute if entity @s[tag=collided] run function luigis_mansion:entities/blue_twirler/collided with entity @s data.entity
execute if entity @s[tag=vanish] run function luigis_mansion:entities/blue_twirler/vanish with entity @s data.entity
execute if entity @s[tag=appear,tag=!beta_appear] run function luigis_mansion:entities/blue_twirler/appear/normal with entity @s data.entity
execute if entity @s[tag=appear,tag=beta_appear] run function luigis_mansion:entities/blue_twirler/appear/beta with entity @s data.entity